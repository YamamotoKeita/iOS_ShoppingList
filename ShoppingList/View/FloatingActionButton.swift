import SwiftUI

struct FloatingActionButton: View {
    let action: () -> Void

    var body: some View {
        Button {
            action()
        } label: {
            Image(systemName: "plus")
                .font(.system(size: 24))
                .foregroundColor(.white)
                .frame(width: 60, height: 60)
                .background(
                    Circle()
                        .fill(.primary)
                        .shadow(color: Color.black.opacity(0.2), radius: 10, x: 5, y: 5)
                )
        }
    }
}

#Preview {
    FloatingActionButton {}
}
