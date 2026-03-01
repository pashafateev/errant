import SwiftUI

struct ContentView: View {
    @EnvironmentObject private var audioEngineManager: AudioEngineManager

    var body: some View {
        VStack(spacing: 16) {
            Text("Errant")
                .font(.largeTitle)
                .fontWeight(.bold)

            Text("Native generative synth app")
                .foregroundStyle(.secondary)

            Button("Start Audio Engine") {
                do {
                    try audioEngineManager.startEngine()
                } catch {
                    // TODO: Replace with user-facing error handling.
                    print("Audio engine failed to start: \(error)")
                }
            }
            .buttonStyle(.borderedProminent)
        }
        .padding()
    }
}

#Preview {
    ContentView()
        .environmentObject(AudioEngineManager())
}
