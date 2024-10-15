//
//  ToDoListView.swift
//  ToDoList
//
//  Created by Victoria Samsonova on 13.10.24.
//

import SwiftUI
import FirebaseFirestore

struct ToDoListView: View {
    @StateObject var viewModel = ToDoListViewViewModel()
    @FirestoreQuery var items: [ToDoListItem]
    
    init(userId: String) {
        self._items = FirestoreQuery(collectionPath: "users/\(userId)/todos")
    }
    
    var body: some View {
        NavigationView {
            VStack {
                List(items) { item in
                    ToDoListItemView(item: item)
                        .swipeActions {
                            Button("Delete") {
                                viewModel.delete(id: item.id)
                            }
                        }
                }
                .listStyle(.insetGrouped)
            }
            .navigationTitle("To Do List")
            .toolbar {
                Button {
                    viewModel.showingView = true
                } label: {
                    Image(systemName: "plus")
                }
            }
            .sheet(isPresented: $viewModel.showingView) {
                NewItemView(newItemPresented: $viewModel.showingView)
            }
        }
    }
}

#Preview {
    ToDoListView(userId: "mblHcm12qncfahizLESxXwpWIzg2")
}
