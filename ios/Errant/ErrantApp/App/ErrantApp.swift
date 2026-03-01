import SwiftUI

@main
struct ErrantApp: App {
    @StateObject private var audioEngineManager = AudioEngineManager()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(audioEngineManager)
        }
    }
}
