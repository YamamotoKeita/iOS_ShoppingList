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
            TabView(selection: $selection) {
                ForEach(Array(allLists.enumerated()), id: \.offset) { index, list in
                    shoppingListView(list: list)
                        .tag(index)
                        .tabItem {
                            Label(list.name,
                                  systemImage: "1.circle")
                        }
                }
            }
        }
    }

    func shoppingListView(list: ShoppingList) -> some View {
        ZStack {
            List {
                ForEach(list.items, id: \.name) { item in
                    Text(item.name)
                }
            }
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
