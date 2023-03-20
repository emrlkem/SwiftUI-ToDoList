//
//  ListViewModel.swift
//  ToDoList
//
//  Created by Emre Ülkem on 20.03.2023.
//

import Foundation

class ListViewModel: ObservableObject {
    
    @Published var items: [ItemModel] = []
    
    init() {
        getItems()
    }
    
    func getItems() {
        let newItems = [
            ItemModel(title: "This is the first", isCompleted: false),
            ItemModel(title: "This is the second", isCompleted: true),
            ItemModel(title: "Third", isCompleted: false)
         ]
        items.append(contentsOf: newItems)
    }
    
    func deleteItem(indexSet: IndexSet) {
        items.remove(atOffsets: indexSet)
    }
    
    func moveItem(from: IndexSet, to: Int) {
        items.move(fromOffsets: from, toOffset: to)
    }
    
}
