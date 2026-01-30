# Artive

<p align="center">
  <img src="assets/icon/icon.png" width="120" alt="Artive Logo">
</p>

A cross-platform mobile application for visual artists to catalogue and archive their artworks with cloud storage.

[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)
[![Flutter](https://img.shields.io/badge/Flutter-3.10+-02569B?logo=flutter)](https://flutter.dev)

## Features

- **Artwork Catalogue**: Store and organize your artworks with metadata
- **Rich Metadata**: Name, description, date (month/year), dimensions, medium/technique
- **Multiple Images per Artwork**: Add main images, photo references, and scans with tags
- **Auto-incrementing IDs**: Each artwork gets a unique sequential identifier
- **Cloud Storage**: All data and images stored securely in your own Supabase project
- **Search & Filter**: Find artworks by name, medium, year
- **Sort Options**: Sort by name, date, or creation time
- **19 Languages**: Full internationalization with system language detection
- **Cross-Platform**: Works on iOS, Android, and Web
- **Guided Setup Wizard**: No manual configuration needed!

## Supported Languages

English, Español, 中文, हिन्दी, Français, العربية, বাংলা, Português, Русский, 日本語, Deutsch, 한국어, Tiếng Việt, Türkçe, Italiano, ไทย, Polski, Nederlands, Bahasa Indonesia

## Screenshots

<!-- Add screenshots here -->

## Getting Started

### Quick Start (Recommended)

1. Build and run the app:
   ```bash
   flutter pub get
   flutter run
   ```

2. The **Setup Wizard** will guide you through:
   - Creating a free Supabase account
   - Setting up your project
   - Configuring the database
   - Creating the storage bucket

That's it! The wizard handles everything step by step with clear instructions.

### Manual Setup (Alternative)

If you prefer to configure manually:

#### 1. Create a Supabase Project

1. Go to [supabase.com](https://supabase.com) and create a free account
2. Create a new project
3. Note your **Project URL** and **anon/public key** from Project Settings > API

#### 2. Set Up the Database

1. In your Supabase project, go to **SQL Editor**
2. Copy the contents of `supabase/schema.sql` and run it

#### 3. Set Up Storage

1. Go to **Storage** in your Supabase dashboard
2. Click **New Bucket**, name it `artworks`, set as **Public**
3. Add storage policies for INSERT, SELECT, DELETE

#### 4. Configure via JSON (optional)

For advanced users, you can pre-configure credentials in `assets/config/app_config.json`:

```json
{
  "supabase": {
    "url": "https://YOUR_PROJECT_ID.supabase.co",
    "anonKey": "YOUR_ANON_KEY"
  },
  "storage": {
    "bucketName": "artworks",
    "maxImageSizeMB": 10,
    "compressionQuality": 85,
    "thumbnailSize": 300
  }
}
```

### 5. Run the App

```bash
# Get dependencies
flutter pub get

# Run on connected device or emulator
flutter run

# Build for release
flutter build apk      # Android
flutter build ios      # iOS
flutter build web      # Web
```

## Project Structure

```
lib/
├── main.dart                    # App entry point
├── core/
│   ├── config/                  # App configuration
│   ├── models/                  # Data models (Artwork, ArtworkImage)
│   ├── providers/               # State management
│   ├── repositories/            # Data access layer
│   └── services/                # Business logic (storage, etc.)
├── l10n/                        # Localizations (19 languages)
└── ui/
    ├── screens/                 # App screens
    └── widgets/                 # Reusable widgets

assets/
├── config/
│   └── app_config.json          # Configuration file
└── icon/
    └── icon.png                 # App icon

supabase/
└── schema.sql                   # Database schema
```

## Configuration for Non-Developers

The app is designed to be easily configurable without code changes:

1. **Supabase Credentials**: Edit `assets/config/app_config.json`
2. **Storage Settings**: Adjust image compression and size limits in the same file
3. **Language**: Users can change language in Settings within the app

## Future Enhancements

- Export/import functionality
- Backup and restore
- Statistics and analytics
- Tags and categories
- Portfolio generation

## Tech Stack

- **Flutter**: Cross-platform UI framework
- **Supabase**: Backend-as-a-Service (PostgreSQL + Storage)
- **Provider**: State management
- **Dart**: Programming language

## Privacy

Artive stores your data in your personal Supabase project. You have full control over your data. The app does not collect any analytics or personal information.

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Author

Made with ❤️ by [Cumbiambero](https://github.com/Cumbiambero)
