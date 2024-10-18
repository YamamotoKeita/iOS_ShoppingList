import AppIntents

struct OpenAppIntent: AppIntent {
    static let title: LocalizedStringResource = "Open App Intent"
    static var openAppWhenRun: Bool = true

    @MainActor
    func perform() async throws -> some IntentResult {
        return .result()
    }
}
