//
//  ToDoListItem.swift
//  ToDoList
//
//  Created by Victoria Samsonova on 13.10.24.
//

import Foundation

struct ToDoListItem: Codable, Identifiable {
    let id: String
    let title: String
    let dueDate: TimeInterval
    let createdDate: TimeInterval
    var isDone: Bool
    
    mutating func isDone(_ state: Bool) {
        isDone = state
    }
}
