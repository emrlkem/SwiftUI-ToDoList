//
//  ListView.swift
//  ToDoList
//
//  Created by Emre Ülkem on 19.03.2023.
//

import SwiftUI

struct ListView: View {
    @State var items: [String] = [
        "This is first.",
        "This is second",
        "Third"
    ]
    
    var body: some View {
        List {
            ForEach(items, id: \.self) {item in
                ListRowView(title: item)
            }
        }
        .listStyle(PlainListStyle())
        .navigationTitle("ToDoList 🙌")
        .navigationBarItems(
            leading: EditButton(),
            trailing: NavigationLink("Add", destination: Text("Destination"))
            )
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ListView()
        }
    }
}



