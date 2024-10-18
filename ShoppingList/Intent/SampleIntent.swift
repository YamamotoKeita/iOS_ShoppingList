import AppIntents

struct IncrementCounterIntent: AppIntent {
    static var title: LocalizedStringResource = "カウンターを増やす"
    static var description = IntentDescription("カウンターを1増やします。")

    // パラメータがない場合でも定義が必要
    static var parameterSummary: some ParameterSummary {
        Summary("カウンターを増やす")
    }

    func perform() async throws -> some ProvidesDialog {
        // カウンターの値を増やす
        CounterManager.shared.increment()

        // 結果を返す
        return .result(
            dialog: "カウンターを\(CounterManager.shared.value)にしました。"
        )
    }
}
