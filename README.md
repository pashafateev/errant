# errant

Generative synth iOS app (Happy Accident Synth, native feel).

## iOS scaffold (Phase 0)

Project scaffold is under `ios/Errant/` with SwiftUI app source files and an audio engine/session stub.

### Open in Xcode

1. Create the Xcode project by following `ios/Errant/PROJECT_SETUP_CHECKLIST.md`.
2. Open `ios/Errant/Errant.xcodeproj` in Xcode.

### Run on device

1. Connect your iPhone/iPad and trust the computer if prompted.
2. In Xcode, select the `Errant` scheme and your device.
3. Build and run (`Cmd+R`).
4. On first launch, allow audio playback if prompted by iOS.

### Signing notes

1. Go to target `Errant` > **Signing & Capabilities**.
2. Enable **Automatically manage signing**.
3. Select your Apple Developer **Team**.
4. Confirm Bundle Identifier is `com.pashafateev.errant` (or your own unique variant).
