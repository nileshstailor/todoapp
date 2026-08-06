import Foundation

class TodoViewModel: ObservableObject {
    @Published var items: [TodoItem] = []

    init() {
        loadItems()
    }

    func addItem(title: String) {
        let newItem = TodoItem(title: title)
        items.append(newItem)
        saveItems()
    }

    func toggleItem(_ item: TodoItem) {
        if let index = items.firstIndex(where: { $0.id == item.id }) {
            items[index].isDone.toggle()
            saveItems()
        }
    }

    func deleteItem(at offsets: IndexSet) {
        items.remove(atOffsets: offsets)
        saveItems()
    }

    func saveItems() {
        if let encoded = try? JSONEncoder().encode(items) {
            UserDefaults.standard.set(encoded, forKey: "TodoItems")
        }
    }

    func loadItems() {
        if let data = UserDefaults.standard.data(forKey: "TodoItems"),
           let decoded = try? JSONDecoder().decode([TodoItem].self, from: data) {
            items = decoded
        }
    }
}
