import AppIntents

struct AddItemIntent: AppIntent {
    static var title: LocalizedStringResource = "買い物リストに追加"
    static var description = IntentDescription("買い物リストに買うものを追加します。")

    static var parameterSummary: some ParameterSummary {
        Summary("買うもの")
    }

    @Parameter(title: "買うもの", requestValueDialog: "何を買いますか？")
    var shoppingItem: String

    func perform() async throws -> some ProvidesDialog {


        return .result(
            dialog: "\(shoppingItem)"
        )
    }
}
