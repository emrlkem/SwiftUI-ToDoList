//
//  ItemModel.swift
//  ToDoList
//
//  Created by Emre Ülkem on 20.03.2023.
//

import Foundation

struct ItemModel: Identifiable {
    let id: String = UUID().uuidString
    let title: String
    let isCompleted: Bool
}
