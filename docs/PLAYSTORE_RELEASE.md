# Google Play Store Release Guide

## 1. Create a Signing Key

Generate a keystore file for signing your release builds:

```bash
keytool -genkey -v -keystore ~/upload-keystore.jks -keyalg RSA \
        -keysize 2048 -validity 10000 -alias upload
```

**Important**: Keep this keystore file safe! If you lose it, you cannot update your app.

## 2. Configure Signing in Android

Create `android/key.properties` (this file is gitignored):

```properties
storePassword=<your_keystore_password>
keyPassword=<your_key_password>
keyAlias=upload
storeFile=<path_to_your_keystore>/upload-keystore.jks
```

Update `android/app/build.gradle.kts`:

```kotlin
import java.util.Properties
import java.io.FileInputStream

val keystoreProperties = Properties()
val keystorePropertiesFile = rootProject.file("key.properties")
if (keystorePropertiesFile.exists()) {
    keystoreProperties.load(FileInputStream(keystorePropertiesFile))
}

android {
    // ... existing config ...

    signingConfigs {
        create("release") {
            keyAlias = keystoreProperties["keyAlias"] as String
            keyPassword = keystoreProperties["keyPassword"] as String
            storeFile = file(keystoreProperties["storeFile"] as String)
            storePassword = keystoreProperties["storePassword"] as String
        }
    }

    buildTypes {
        release {
            signingConfig = signingConfigs.getByName("release")
            isMinifyEnabled = true
            isShrinkResources = true
            proguardFiles(
                getDefaultProguardFile("proguard-android-optimize.txt"),
                "proguard-rules.pro"
            )
        }
    }
}
```

## 3. Build the Release

```bash
# Build App Bundle (recommended for Play Store)
flutter build appbundle --release

# Output: build/app/outputs/bundle/release/app-release.aab
```

## 4. Create Play Console Account

1. Go to [Google Play Console](https://play.google.com/console)
2. Pay the $25 one-time registration fee
3. Complete the developer profile

## 5. Create App in Play Console

1. Click "Create app"
2. Fill in:
   - App name: **Artive**
   - Default language: English (US) or your preferred
   - App or game: **App**
   - Free or paid: **Free**
3. Accept policies

## 6. Store Listing

### App Details
- **Title**: Artive - Artwork Catalogue
- **Short description** (80 chars max):
  > Catalogue your artworks with photos, metadata and cloud backup.
- **Full description** (4000 chars max):
  > Artive is the perfect companion for visual artists who want to organize and preserve their creative work.
  >
  > 📸 CATALOGUE YOUR ART
  > Store your paintings, drawings, sculptures, and other artworks with rich metadata including title, dimensions, medium, and date.
  >
  > 🖼️ MULTIPLE IMAGES PER ARTWORK
  > Add main photos, reference images, and high-resolution scans. Tag each image for easy organization.
  >
  > ☁️ SECURE CLOUD STORAGE
  > Your catalogue is safely backed up in your personal Supabase cloud storage. You own your data.
  >
  > 🔍 SEARCH & FILTER
  > Quickly find artworks by name, medium, or year. Sort by date, name, or creation time.
  >
  > 🌍 19 LANGUAGES
  > Use Artive in your native language: English, Spanish, Chinese, Hindi, French, Arabic, Bengali, Portuguese, Russian, Japanese, German, Korean, Vietnamese, Turkish, Italian, Thai, Polish, Dutch, Indonesian.
  >
  > 🎨 DESIGNED FOR ARTISTS
  > Clean, simple interface that puts your art front and center.
  >
  > Features:
  > • Auto-incrementing artwork IDs
  > • Image compression for fast syncing
  > • Guided setup wizard
  > • Works offline with sync
  > • Free and open source

### Graphics
You'll need:
- **Icon**: 512x512 PNG (32-bit with alpha)
- **Feature graphic**: 1024x500 PNG/JPG
- **Screenshots**: At least 2 phone screenshots
  - Minimum: 320px, Maximum: 3840px
  - Recommended: 1080x1920 (9:16 ratio)

### Category
- **Category**: Art & Design
- **Tags**: art, catalogue, portfolio, artwork, gallery

## 7. App Content

### Privacy Policy
Create and host a privacy policy. Suggested content:

```
Privacy Policy for Artive

Last updated: [Date]

Artive is an artwork cataloguing app that stores your data in your personal Supabase project.

DATA COLLECTION
Artive does not collect, store, or transmit any personal data to our servers. All your artwork data and images are stored in your own Supabase project that you configure during setup.

DATA YOU PROVIDE
- Artwork metadata (titles, descriptions, dates, dimensions)
- Images of your artworks
- Supabase credentials (stored locally on your device)

THIRD-PARTY SERVICES
Artive uses Supabase for data storage. Please refer to Supabase's privacy policy for information about their data handling practices.

CONTACT
For questions about this privacy policy, contact: [your email]
```

Host this on GitHub Pages, your website, or a free service like:
- https://www.privacypolicies.com
- GitHub Gist (raw link)

### Data Safety Form
- Does the app collect any user data? **No**
- Does the app share any user data? **No**

## 8. Release

1. Go to "Release" > "Production"
2. Click "Create new release"
3. Upload the AAB file
4. Add release notes
5. Review and roll out

## 9. Review Timeline

- First review: 1-7 days typically
- Subsequent updates: Usually faster

## Checklist

- [ ] Create signing keystore
- [ ] Configure key.properties
- [ ] Update build.gradle.kts with signing config
- [ ] Generate app icons (512x512)
- [ ] Build release AAB
- [ ] Create Play Console account
- [ ] Prepare store listing text
- [ ] Take screenshots
- [ ] Create feature graphic
- [ ] Write/host privacy policy
- [ ] Complete data safety form
- [ ] Submit for review
