import SwiftUI

struct ShoppingListTabScreen: View {
    @State var selection: Int?
    @State var allLists: [ShoppingList]

    // TODO 並び替え
    // TODO 削除
    // TODO 追加
    // TODO リスト追加

    var body: some View {
        VStack {
            Text("買い物メモ")
            ZStack(alignment: .bottomTrailing) {
                TabView(selection: $selection) {
                    ForEach(Array(allLists.enumerated()), id: \.offset) { index, list in
                        shoppingListView(list: list)
                            .tag(index)
                    }
                    .onDelete { indexSet in
                    }
                    .onMove { indices, newOffset in
                    }
                }

                FloatingActionButton {

                }
                .padding(.horizontal, 20)
                .padding(.vertical, 20)
            }
        }
    }

    func shoppingListView(list: ShoppingList) -> some View {
        ZStack {
            List {
                ForEach(list.items, id: \.name) { item in
                    itemRow(item: item)
                }
            }
            .toolbar {
                EditButton()
            }
        }
    }

    func itemRow(item: ShoppingItem) -> some View {
        HStack {
            Text(item.name)
            Spacer()

        }
    }
}

#Preview {
    ShoppingListTabScreen(
        selection: 1,
        allLists: [
            ShoppingList(
                name: "１番目のリスト",
                items: [
                    ShoppingItem(name: "牛乳"),
                    ShoppingItem(name: "卵"),
                    ShoppingItem(name: "牛乳"),
                ],
                createdAt: Date()
            ),
            ShoppingList(
                name: "２番目のリスト",
                items: [
                    ShoppingItem(name: "鉛筆"),
                    ShoppingItem(name: "消しゴム"),
                ],
                createdAt: Date()
            )
        ]
    )
}
