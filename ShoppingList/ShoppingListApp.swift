import SwiftUI
import AppIntents

@main
struct ShoppingListApp: App {
    init() {
        AppDependency.configure()
        ShoppingListAppShortcuts.updateAppShortcutParameters()
    }

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
