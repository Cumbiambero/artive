-- Storage Policies for artworks bucket
-- ⚠️ IMPORTANT: Storage policies CANNOT be created via SQL Editor
-- You must create these policies in the Supabase Dashboard UI

-- Steps to Enable Storage Policies:
-- 1. Go to: Supabase Dashboard → Storage → Buckets
-- 2. Create or select the 'artworks' bucket
-- 3. Make sure the bucket is set to "Public" if you want public access
-- 4. Click on "Policies" for the artworks bucket
-- 5. Click "New Policy" and create the following policies:

-- ================== POLICY 1: Allow Public SELECT ==================
-- Policy Name: Allow public downloads
-- Allowed Operation: SELECT
-- Policy Definition: 
--   USING expression: bucket_id = 'artworks'

-- ================== POLICY 2: Allow Public INSERT ==================
-- Policy Name: Allow public uploads
-- Allowed Operation: INSERT
-- Policy Definition:
--   WITH CHECK expression: bucket_id = 'artworks'

-- ================== POLICY 3: Allow Public UPDATE ==================
-- Policy Name: Allow public updates
-- Allowed Operation: UPDATE
-- Policy Definition:
--   USING expression: bucket_id = 'artworks'
--   WITH CHECK expression: bucket_id = 'artworks'

-- ================== POLICY 4: Allow Public DELETE ==================
-- Policy Name: Allow public deletes
-- Allowed Operation: DELETE
-- Policy Definition:
--   USING expression: bucket_id = 'artworks'

-- Alternatively, you can use the "New Policy" → "Full customization" option
-- and paste these SQL definitions directly in the UI

-- Note: If you want to restrict access to authenticated users only,
-- replace 'true' with 'auth.role() = 'authenticated'' in the policies
