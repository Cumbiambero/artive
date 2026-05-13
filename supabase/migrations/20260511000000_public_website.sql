-- Migration: Public website feature
-- Adds public/for-sale columns to artworks and creates artist_profile table

ALTER TABLE artworks
  ADD COLUMN IF NOT EXISTS is_public BOOLEAN DEFAULT FALSE,
  ADD COLUMN IF NOT EXISTS is_for_sale BOOLEAN DEFAULT FALSE,
  ADD COLUMN IF NOT EXISTS price_amount NUMERIC(10,2),
  ADD COLUMN IF NOT EXISTS price_currency TEXT;

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

INSERT INTO artist_profile (id) VALUES (1) ON CONFLICT (id) DO NOTHING;

ALTER TABLE artist_profile ENABLE ROW LEVEL SECURITY;

DO $$ BEGIN
  IF NOT EXISTS (
    SELECT 1 FROM pg_policies WHERE tablename = 'artist_profile' AND policyname = 'Allow public read on artist_profile'
  ) THEN
    CREATE POLICY "Allow public read on artist_profile"
      ON artist_profile FOR SELECT USING (true);
  END IF;
  IF NOT EXISTS (
    SELECT 1 FROM pg_policies WHERE tablename = 'artist_profile' AND policyname = 'Allow authenticated write on artist_profile'
  ) THEN
    CREATE POLICY "Allow authenticated write on artist_profile"
      ON artist_profile FOR INSERT
      WITH CHECK ((select auth.role()) = 'anon' OR (select auth.role()) = 'authenticated');
  END IF;
  IF NOT EXISTS (
    SELECT 1 FROM pg_policies WHERE tablename = 'artist_profile' AND policyname = 'Allow authenticated update on artist_profile'
  ) THEN
    CREATE POLICY "Allow authenticated update on artist_profile"
      ON artist_profile FOR UPDATE
      USING ((select auth.role()) = 'anon' OR (select auth.role()) = 'authenticated')
      WITH CHECK ((select auth.role()) = 'anon' OR (select auth.role()) = 'authenticated');
  END IF;
END $$;
