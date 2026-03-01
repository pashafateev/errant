import AVFAudio
import Foundation

final class AudioEngineManager: ObservableObject {
    private let engine = AVAudioEngine()
    private var isConfigured = false

    func configureAudioSession() throws {
        let session = AVAudioSession.sharedInstance()
        try session.setCategory(.playback, mode: .default, options: [.mixWithOthers])
        try session.setActive(true)
        isConfigured = true
    }

    func startEngine() throws {
        if !isConfigured {
            try configureAudioSession()
        }

        // Placeholder for future synth graph setup.
        // Example: attach nodes, connect graph, and prepare scheduling here.

        if !engine.isRunning {
            try engine.start()
        }
    }

    func stopEngine() {
        if engine.isRunning {
            engine.stop()
        }
    }
}
