//
//  ToDoListViewViewModel.swift
//  ToDoList
//
//  Created by Victoria Samsonova on 13.10.24.
//

import Foundation
import FirebaseFirestore

// viewModel for list of items view
//primary tab
class ToDoListViewViewModel: ObservableObject {
    @Published var showingView = false
    
    private let userId: String
    
    init(userId: String) {
        self.userId = userId
    }
    
    func delete(id: String) {
        let db = Firestore.firestore()
        db.collection("users")
            .document(userId)
            .collection("todos")
            .document(id)
            .delete()
    }
}
