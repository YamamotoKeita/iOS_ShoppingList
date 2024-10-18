import SwiftUI

class CounterManager {
    static let shared = CounterManager()
    @AppStorage("counterValue") var value: Int = 0

    func increment() {
        value += 1
    }
}
