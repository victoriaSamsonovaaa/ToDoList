//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Victoria Samsonova on 13.10.24.
//

import FirebaseCore
import SwiftUI

@main
struct ToDoListApp: App {
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
