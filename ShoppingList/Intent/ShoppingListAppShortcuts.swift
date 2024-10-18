import AppIntents

struct ShoppingListAppShortcuts: AppShortcutsProvider {
    static var appShortcuts: [AppShortcut] {
        return [
            AppShortcut(
                intent: IncrementCounterIntent(),
                phrases: [
                    "\(.applicationName)でカウンターを増やす",
                ],
                shortTitle: "カウンター上げる",
                systemImageName: "takeoutbag.and.cup.and.straw.fill"
            ),
            AppShortcut(
                intent: AddItemIntent(),
                phrases: [
                    "\(.applicationName)に追加",
                ],
                shortTitle: "カウンター上げる",
                systemImageName: "takeoutbag.and.cup.and.straw.fill"
            ),
            AppShortcut(
                intent: OpenAppIntent(),
                phrases: [
                    "\(.applicationName)の画面を開いて",
                    "\(.applicationName)の画面を見せて",
                    "\(.applicationName)をお願い",
                ],
                shortTitle: "アプリを開く",
                systemImageName: "face.smiling.inverse"
            )
        ]
    }

    static var shortcutTileColor: ShortcutTileColor = .grayGreen
}
