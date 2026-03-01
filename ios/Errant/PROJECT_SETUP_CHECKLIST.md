# Errant iOS Project Setup (Phase 0)

Because a full `.xcodeproj` could not be generated reliably in this environment, create it in Xcode with the following checklist.

1. Open Xcode and choose **File > New > Project...**.
2. Select **iOS > App**.
3. Use these settings:
   - Product Name: `Errant`
   - Team: your Apple Developer Team (can be set later)
   - Organization Identifier: `com.pashafateev`
   - Bundle Identifier result: `com.pashafateev.errant`
   - Interface: `SwiftUI`
   - Language: `Swift`
   - Testing System: `Swift Testing` (default)
4. Save the new project at `ios/Errant/` (so the project file is `ios/Errant/Errant.xcodeproj`).
5. Set deployment target to **iOS 17.0** in target settings.
6. Replace/add source files to match this structure:
   - `ErrantApp/App/ErrantApp.swift`
   - `ErrantApp/App/ContentView.swift`
   - `ErrantApp/Audio/AudioEngineManager.swift`
   - `ErrantApp/Resources/Info.plist`
7. In target **Build Settings**, set `Info.plist File` to `ErrantApp/Resources/Info.plist`.
8. In target **Signing & Capabilities**, choose your Team and confirm Bundle Identifier is `com.pashafateev.errant`.
9. Build and run on simulator, then device.

## Notes
- `AudioEngineManager` currently configures `AVAudioSession` and starts `AVAudioEngine` only; synth graph implementation is intentionally deferred.
- If Xcode creates duplicate default files, delete duplicates from the target membership.
