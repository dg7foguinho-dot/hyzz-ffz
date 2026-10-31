import ReplayKit

class SampleHandler: RPBroadcastSampleHandler {
    override func broadcastStarted(withSetupInfo setupInfo: [String : NSObject]?) {
        AimbotEngine.shared.setup()
        AimbotEngine.shared.enabled = true
    }
    override func broadcastFinished() {
        AimbotEngine.shared.enabled = false
    }
    override func processSampleBuffer(_ sampleBuffer: CMSampleBuffer, with sampleBufferType: RPSampleBufferType) {
        if sampleBufferType == .video {
            AimbotEngine.shared.process(buffer: sampleBuffer)
        }
    }
}
