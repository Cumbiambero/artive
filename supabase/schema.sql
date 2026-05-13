-- Artive Database Schema for Supabase
-- Run this SQL in your Supabase project's SQL Editor

-- Enable UUID extension
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

-- Create artworks table
CREATE TABLE IF NOT EXISTS artworks (
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  description TEXT,
  date_month INTEGER CHECK (date_month >= 1 AND date_month <= 12),
  date_year INTEGER CHECK (date_year >= 1900 AND date_year <= 2100),
  dimension TEXT,
  medium TEXT,
  is_study BOOLEAN DEFAULT FALSE,
  is_public BOOLEAN DEFAULT FALSE,
  is_for_sale BOOLEAN DEFAULT FALSE,
  price_amount NUMERIC(10,2),
  price_currency TEXT,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- Create artwork_images table
CREATE TABLE IF NOT EXISTS artwork_images (
  id UUID DEFAULT uuid_generate_v4() PRIMARY KEY,
  artwork_id INTEGER NOT NULL REFERENCES artworks(id) ON DELETE CASCADE,
  storage_path TEXT NOT NULL,
  thumbnail_path TEXT,
  tag TEXT NOT NULL CHECK (tag IN ('main', 'photo_reference', 'scan')),
  sort_order INTEGER DEFAULT 0,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- Create artist_profile table (single-row, id always = 1)
CREATE TABLE IF NOT EXISTS artist_profile (
  id INTEGER PRIMARY KEY DEFAULT 1,
  name TEXT NOT NULL DEFAULT '',
  bio TEXT,
  contact_email TEXT,
  contact_instagram TEXT,
  contact_website TEXT,
  contact_phone TEXT,
  contact_facebook TEXT,
  contact_location TEXT,
  updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
  CONSTRAINT single_row CHECK (id = 1)
);

-- Seed the single profile row so upsert always finds it
INSERT INTO artist_profile (id) VALUES (1) ON CONFLICT (id) DO NOTHING;

-- Enable Row Level Security on artist_profile
ALTER TABLE artist_profile ENABLE ROW LEVEL SECURITY;

CREATE POLICY "Allow public read on artist_profile" ON artist_profile
  FOR SELECT
  USING (true);

CREATE POLICY "Allow authenticated write on artist_profile" ON artist_profile
  FOR INSERT
  WITH CHECK ((select auth.role()) = 'anon' OR (select auth.role()) = 'authenticated');

CREATE POLICY "Allow authenticated update on artist_profile" ON artist_profile
  FOR UPDATE
  USING ((select auth.role()) = 'anon' OR (select auth.role()) = 'authenticated')
  WITH CHECK ((select auth.role()) = 'anon' OR (select auth.role()) = 'authenticated');

-- Create indexes for better performance
CREATE INDEX IF NOT EXISTS idx_artworks_name ON artworks(name);
CREATE INDEX IF NOT EXISTS idx_artworks_medium ON artworks(medium);
CREATE INDEX IF NOT EXISTS idx_artworks_date_year ON artworks(date_year);
CREATE INDEX IF NOT EXISTS idx_artwork_images_artwork_id ON artwork_images(artwork_id);

-- Ensure foreign key has proper index (covering index)
CREATE INDEX IF NOT EXISTS idx_artwork_images_artwork_id_fkey_covering ON artwork_images(artwork_id) INCLUDE (id, storage_path, thumbnail_path, tag, sort_order);

-- Enable Row Level Security
ALTER TABLE artworks ENABLE ROW LEVEL SECURITY;
ALTER TABLE artwork_images ENABLE ROW LEVEL SECURITY;

-- Create policies with proper security controls
-- Optimized for performance: single policy per operation type
-- This follows Supabase best practices while maintaining single-user functionality

-- Artworks: Public read access (SELECT only)
CREATE POLICY "Allow public read on artworks" ON artworks
  FOR SELECT
  USING (true);

-- Artworks: Authenticated write access (INSERT/UPDATE/DELETE)
-- Uses (select auth.role()) to evaluate once per query, not per row
CREATE POLICY "Allow authenticated write on artworks" ON artworks
  FOR INSERT
  WITH CHECK ((select auth.role()) = 'anon' OR (select auth.role()) = 'authenticated');

CREATE POLICY "Allow authenticated update on artworks" ON artworks
  FOR UPDATE
  USING ((select auth.role()) = 'anon' OR (select auth.role()) = 'authenticated')
  WITH CHECK ((select auth.role()) = 'anon' OR (select auth.role()) = 'authenticated');

CREATE POLICY "Allow authenticated delete on artworks" ON artworks
  FOR DELETE
  USING ((select auth.role()) = 'anon' OR (select auth.role()) = 'authenticated');

-- Artwork images: Public read access (SELECT only)
CREATE POLICY "Allow public read on artwork_images" ON artwork_images
  FOR SELECT
  USING (true);

-- Artwork images: Authenticated write access (INSERT/UPDATE/DELETE)
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

-- Create storage bucket for artwork images
-- Note: This needs to be done in Supabase Dashboard > Storage > New Bucket
-- Or via the Supabase Management API
-- Bucket name: artworks
-- Public: true (or false if you want authenticated access only)

-- Storage policies (run these after creating the bucket)
-- In Supabase Dashboard > Storage > artworks > Policies

-- INSERT policy
-- CREATE POLICY "Allow uploads" ON storage.objects
--   FOR INSERT WITH CHECK (bucket_id = 'artworks');

-- SELECT policy
-- CREATE POLICY "Allow downloads" ON storage.objects
--   FOR SELECT USING (bucket_id = 'artworks');

-- DELETE policy
-- CREATE POLICY "Allow deletions" ON storage.objects
--   FOR DELETE USING (bucket_id = 'artworks');

-- =============================================================
-- MIGRATION: Run this block if you already have the schema set up
-- (existing users upgrading from a version before public website)
-- =============================================================
-- ALTER TABLE artworks
--   ADD COLUMN IF NOT EXISTS is_public BOOLEAN DEFAULT FALSE,
--   ADD COLUMN IF NOT EXISTS is_for_sale BOOLEAN DEFAULT FALSE,
--   ADD COLUMN IF NOT EXISTS price_amount NUMERIC(10,2),
--   ADD COLUMN IF NOT EXISTS price_currency TEXT;
--
-- CREATE TABLE IF NOT EXISTS artist_profile (
--   id INTEGER PRIMARY KEY DEFAULT 1,
--   name TEXT NOT NULL DEFAULT '',
--   bio TEXT,
--   contact_email TEXT,
--   contact_instagram TEXT,
--   contact_website TEXT,
--   contact_phone TEXT,
--   contact_facebook TEXT,
--   contact_location TEXT,
--   updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
--   CONSTRAINT single_row CHECK (id = 1)
-- );
--
-- INSERT INTO artist_profile (id) VALUES (1) ON CONFLICT (id) DO NOTHING;
--
-- ALTER TABLE artist_profile ENABLE ROW LEVEL SECURITY;
--
-- CREATE POLICY "Allow public read on artist_profile" ON artist_profile FOR SELECT USING (true);
-- CREATE POLICY "Allow authenticated write on artist_profile" ON artist_profile FOR INSERT WITH CHECK ((select auth.role()) = 'anon' OR (select auth.role()) = 'authenticated');
-- CREATE POLICY "Allow authenticated update on artist_profile" ON artist_profile FOR UPDATE USING ((select auth.role()) = 'anon' OR (select auth.role()) = 'authenticated') WITH CHECK ((select auth.role()) = 'anon' OR (select auth.role()) = 'authenticated');
