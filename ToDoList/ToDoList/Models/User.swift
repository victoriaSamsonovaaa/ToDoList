//
//  User.swift
//  ToDoList
//
//  Created by Victoria Samsonova on 13.10.24.
//

import Foundation

struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
