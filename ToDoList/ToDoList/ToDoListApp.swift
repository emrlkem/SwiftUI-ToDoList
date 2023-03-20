//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Emre Ülkem on 19.03.2023.
//

import SwiftUI

/*
    MVVM Architecture
 
    Model - Data point
    View - UI
    ViewModel - manages models for view
 
*/

@main
struct ToDoListApp: App {
    
    @StateObject var listViewModel: ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ListView()
            }
            .environmentObject(listViewModel)
        }
    }
}
