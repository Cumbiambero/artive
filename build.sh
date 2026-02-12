#!/bin/bash

# Build script for Artive - Builds all platform releases and organizes them
# Usage: ./build_releases.sh

set -e  # Exit on error

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Functions
print_status() {
    echo -e "${GREEN}✓ $1${NC}"
}

print_building() {
    echo -e "${YELLOW}→ Building $1...${NC}"
}

# Get version from pubspec.yaml
VERSION=$(grep '^version:' pubspec.yaml | sed 's/version: //' | tr -d ' ')
echo -e "${GREEN}Building Artive v${VERSION}${NC}"

# Clean environment
echo -e "${YELLOW}Cleaning environment...${NC}"
flutter clean
flutter pub get

# Generate app icons
echo -e "${YELLOW}Generating app icons...${NC}"
dart run flutter_launcher_icons
print_status "App icons generated"

# Create dist directory
DIST_DIR="dist"
rm -rf "$DIST_DIR"
mkdir -p "$DIST_DIR"
print_building "Android APK"
flutter build apk --release
if [ -f "build/app/outputs/flutter-apk/app-release.apk" ]; then
    cp "build/app/outputs/flutter-apk/app-release.apk" "$DIST_DIR/artive-${VERSION}.apk"
    print_status "Android APK built: artive-${VERSION}.apk"
else
    echo -e "${RED}Warning: Android APK not found${NC}"
fi

# Build Android App Bundle
print_building "Android App Bundle"
flutter build appbundle --release
if [ -f "build/app/outputs/bundle/release/app-release.aab" ]; then
    cp "build/app/outputs/bundle/release/app-release.aab" "$DIST_DIR/artive-${VERSION}.aab"
    print_status "Android App Bundle built: artive-${VERSION}.aab"
else
    echo -e "${RED}Warning: Android App Bundle not found${NC}"
fi

# Build iOS (only on macOS)
if [[ "$OSTYPE" == "darwin"* ]]; then
    print_building "iOS"
    flutter build ios --release --no-codesign
    print_status "iOS build completed (not archived - requires Xcode for IPA)"
else
    echo -e "${YELLOW}Skipping iOS build (macOS required)${NC}"
fi

# Build macOS (only on macOS)
if [[ "$OSTYPE" == "darwin"* ]]; then
    print_building "macOS"
    flutter build macos --release
    if [ -d "build/macos/Build/Products/Release/Artive.app" ]; then
        cd build/macos/Build/Products/Release/
        zip -r -q "../../../../../$DIST_DIR/artive-${VERSION}-macos.zip" "Artive.app"
        cd ../../../../../
        print_status "macOS build built: artive-${VERSION}-macos.zip"
    else
        echo -e "${RED}Warning: macOS build not found${NC}"
    fi
else
    echo -e "${YELLOW}Skipping macOS build (macOS required)${NC}"
fi

# Build Linux (only on Linux or macOS with proper setup)
if [[ "$OSTYPE" == "linux-gnu"* ]] || [[ "$OSTYPE" == "darwin"* ]]; then
    print_building "Linux"
    if flutter build linux --release 2>/dev/null; then
        if [ -d "build/linux/x64/release/bundle" ]; then
            cd build/linux/x64/release/
            tar -czf "../../../../$DIST_DIR/artive-${VERSION}-linux-x64.tar.gz" bundle/
            cd ../../../../
            print_status "Linux build built: artive-${VERSION}-linux-x64.tar.gz"
        else
            echo -e "${RED}Warning: Linux build not found${NC}"
        fi
    else
        echo -e "${YELLOW}Skipping Linux build (not configured or dependencies missing)${NC}"
    fi
fi

# Build Windows (only on Windows or with cross-compilation)
if [[ "$OSTYPE" == "msys" ]] || [[ "$OSTYPE" == "win32" ]]; then
    print_building "Windows"
    flutter build windows --release
    if [ -d "build/windows/x64/runner/Release" ]; then
        cd build/windows/x64/runner/Release
        zip -r -q "../../../../../$DIST_DIR/artive-${VERSION}-windows-x64.zip" *
        cd ../../../../../
        print_status "Windows build built: artive-${VERSION}-windows-x64.zip"
    else
        echo -e "${RED}Warning: Windows build not found${NC}"
    fi
else
    echo -e "${YELLOW}Skipping Windows build (Windows required)${NC}"
fi

# Build Web
print_building "Web"
flutter build web --release
if [ -d "build/web" ]; then
    cd build/web
    zip -r -q "../../$DIST_DIR/artive-${VERSION}-web.zip" *
    cd ../..
    print_status "Web build built: artive-${VERSION}-web.zip"
else
    echo -e "${RED}Warning: Web build not found${NC}"
fi

# Summary
echo ""
echo -e "${GREEN}═══════════════════════════════════════${NC}"
echo -e "${GREEN}Build Summary${NC}"
echo -e "${GREEN}═══════════════════════════════════════${NC}"
echo -e "Version: ${YELLOW}${VERSION}${NC}"
echo -e "Output directory: ${YELLOW}${DIST_DIR}/${NC}"
echo ""
echo "Built artifacts:"
ls -lh "$DIST_DIR" | tail -n +2 | awk '{print "  - " $9 " (" $5 ")"}'
echo ""
echo -e "${GREEN}✓ All builds completed successfully!${NC}"
