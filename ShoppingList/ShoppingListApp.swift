import SwiftUI
import AppIntents

@main
struct ShoppingListApp: App {
    init() {
        ShoppingListAppShortcuts.updateAppShortcutParameters()
    }

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
