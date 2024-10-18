import SwiftUI

struct ContentView: View {
    @AppStorage("counterValue") var counterValue: Int = 0

    var body: some View {
        VStack(spacing: 20) {
            Text("カウンターの値: \(counterValue)")
                .font(.largeTitle)

            Button(action: {
                CounterManager.shared.increment()
            }) {
                Text("カウンターを増やす")
                    .font(.title)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
