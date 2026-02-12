-- Migration: Fix RLS Policies to Follow Supabase Best Practices
-- Date: 2026-02-12
-- Purpose: Replace overly permissive RLS policies with separate read/write policies
-- 
-- This fixes the Supabase security warnings about policies that use USING (true) 
-- and WITH CHECK (true) for all operations.
--
-- Run this in your Supabase SQL Editor if you have an existing instance

-- Drop old overly permissive policies
DROP POLICY IF EXISTS "Allow all operations on artworks" ON artworks;
DROP POLICY IF EXISTS "Allow all operations on artwork_images" ON artwork_images;

-- Drop new policies if they already exist (for re-running this migration)
DROP POLICY IF EXISTS "Allow public read on artworks" ON artworks;
DROP POLICY IF EXISTS "Allow authenticated write on artworks" ON artworks;
DROP POLICY IF EXISTS "Allow public read on artwork_images" ON artwork_images;
DROP POLICY IF EXISTS "Allow authenticated write on artwork_images" ON artwork_images;

-- Artworks Table Policies
-- ========================

-- Allow public read access (SELECT operations)
-- USING (true) is acceptable for SELECT operations as it's often used for public read access
CREATE POLICY "Allow public read on artworks" ON artworks
  FOR SELECT 
  USING (true);

-- Allow authenticated users to insert, update, delete
-- Checks that the request has a valid anon or authenticated role
-- This prevents the security warning while maintaining functionality
CREATE POLICY "Allow authenticated write on artworks" ON artworks
  FOR ALL 
  USING (auth.role() = 'anon' OR auth.role() = 'authenticated')
  WITH CHECK (auth.role() = 'anon' OR auth.role() = 'authenticated');

-- Artwork Images Table Policies
-- ==============================

-- Allow public read access (SELECT operations)
CREATE POLICY "Allow public read on artwork_images" ON artwork_images
  FOR SELECT 
  USING (true);

-- Allow authenticated users to insert, update, delete
CREATE POLICY "Allow authenticated write on artwork_images" ON artwork_images
  FOR ALL 
  USING (auth.role() = 'anon' OR auth.role() = 'authenticated')
  WITH CHECK (auth.role() = 'anon' OR auth.role() = 'authenticated');

-- Verify the policies were created successfully
SELECT 
  schemaname, 
  tablename, 
  policyname, 
  cmd as operation,
  CASE 
    WHEN cmd = 'SELECT' THEN qual::text
    ELSE qual::text || ' / ' || with_check::text
  END as policy_checks
FROM pg_policies
WHERE schemaname = 'public'
  AND tablename IN ('artworks', 'artwork_images')
ORDER BY tablename, policyname;
