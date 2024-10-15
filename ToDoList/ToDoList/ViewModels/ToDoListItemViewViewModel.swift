//
//  ToDoListItemViewViewModel.swift
//  ToDoList
//
//  Created by Victoria Samsonova on 13.10.24.
//

import FirebaseAuth
import FirebaseFirestore
import Foundation

//viewMoswl for singl to do list item view (each row)
class ToDoListItemViewViewModel: ObservableObject {
    init() {
    }
    
    func toggleIsDone(item: ToDoListItem) {
        var itemCopy = item
        itemCopy.setDone(!item.isDone)
        
        guard let uid = Auth.auth().currentUser?.uid else {
            return
        }
        
        let db = Firestore.firestore()
        db.collection("users")
            .document(uid)
            .collection("todos")
            .document(itemCopy.id)
            .setData(itemCopy.asDicktionary())
    }
}
