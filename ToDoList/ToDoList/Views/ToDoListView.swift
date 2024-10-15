//
//  ToDoListView.swift
//  ToDoList
//
//  Created by Victoria Samsonova on 13.10.24.
//

import SwiftUI
import FirebaseFirestore

struct ToDoListView: View {
    @StateObject var viewModel: ToDoListViewViewModel
    @FirestoreQuery var items: [ToDoListItem]
    
    init(userId: String) {
        self._items = FirestoreQuery(collectionPath: "users/\(userId)/todos")
        self._viewModel = StateObject(wrappedValue: ToDoListViewViewModel(userId: userId))
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
                            .tint(.red)
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
                        .tint(Color(#colorLiteral(red: 1, green: 0.5424868464, blue: 1, alpha: 1)))
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
