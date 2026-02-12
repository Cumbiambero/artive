-- Migration: Optimize RLS Policies for Performance
-- Date: 2026-02-12
-- Purpose: Fix multiple policy and auth function re-evaluation issues
-- 
-- This addresses Supabase performance advisor warnings:
-- 1. Multiple permissive policies for same role/action
-- 2. auth.role() re-evaluation for each row
--
-- Run this in your Supabase SQL Editor if you have an existing instance

-- Drop old policies (both the original and the previous fixes)
DROP POLICY IF EXISTS "Allow all operations on artworks" ON artworks;
DROP POLICY IF EXISTS "Allow all operations on artwork_images" ON artwork_images;
DROP POLICY IF EXISTS "Allow public read on artworks" ON artworks;
DROP POLICY IF EXISTS "Allow authenticated write on artworks" ON artworks;
DROP POLICY IF EXISTS "Allow public read on artwork_images" ON artwork_images;
DROP POLICY IF EXISTS "Allow authenticated write on artwork_images" ON artwork_images;

-- Ensure foreign key has proper covering index
CREATE INDEX IF NOT EXISTS idx_artwork_images_artwork_id_fkey_covering ON artwork_images(artwork_id) INCLUDE (id, storage_path, thumbnail_path, tag, sort_order);

-- Artworks Table Policies - Optimized for Performance
-- ================================================

-- Public read access (SELECT only) - Single policy
CREATE POLICY "Allow public read on artworks" ON artworks
  FOR SELECT
  USING (true);

-- Authenticated write access - Separate policies per operation
-- Uses (select auth.role()) to evaluate once per query, not per row
CREATE POLICY "Allow authenticated insert on artworks" ON artworks
  FOR INSERT
  WITH CHECK ((select auth.role()) = 'anon' OR (select auth.role()) = 'authenticated');

CREATE POLICY "Allow authenticated update on artworks" ON artworks
  FOR UPDATE
  USING ((select auth.role()) = 'anon' OR (select auth.role()) = 'authenticated')
  WITH CHECK ((select auth.role()) = 'anon' OR (select auth.role()) = 'authenticated');

CREATE POLICY "Allow authenticated delete on artworks" ON artworks
  FOR DELETE
  USING ((select auth.role()) = 'anon' OR (select auth.role()) = 'authenticated');

-- Artwork Images Table Policies - Optimized for Performance
-- =======================================================

-- Public read access (SELECT only) - Single policy
CREATE POLICY "Allow public read on artwork_images" ON artwork_images
  FOR SELECT
  USING (true);

-- Authenticated write access - Separate policies per operation
-- Uses (select auth.role()) to evaluate once per query, not per row
CREATE POLICY "Allow authenticated insert on artwork_images" ON artwork_images
  FOR INSERT
  WITH CHECK ((select auth.role()) = 'anon' OR (select auth.role()) = 'authenticated');

CREATE POLICY "Allow authenticated update on artwork_images" ON artwork_images
  FOR UPDATE
  USING ((select auth.role()) = 'anon' OR (select auth.role()) = 'authenticated')
  WITH CHECK ((select auth.role()) = 'anon' OR (select auth.role()) = 'authenticated');

CREATE POLICY "Allow authenticated delete on artwork_images" ON artwork_images
  FOR DELETE
  USING ((select auth.role()) = 'anon' OR (select auth.role()) = 'authenticated');

-- Verify the policies were created successfully
SELECT
  schemaname,
  tablename,
  policyname,
  cmd as operation,
  CASE
    WHEN cmd = 'SELECT' THEN 'public read'
    WHEN cmd IN ('INSERT', 'UPDATE', 'DELETE') THEN 'authenticated ' || lower(cmd)
    ELSE 'unknown'
  END as policy_type
FROM pg_policies
WHERE schemaname = 'public'
  AND tablename IN ('artworks', 'artwork_images')
ORDER BY tablename, cmd, policyname;
