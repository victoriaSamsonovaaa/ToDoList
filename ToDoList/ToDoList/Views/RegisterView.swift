//
//  RegisterView.swift
//  ToDoList
//
//  Created by Victoria Samsonova on 13.10.24.
//

import SwiftUI

struct RegisterView: View {
    @State private var name = ""
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        VStack {
            HeaderView(title: "Register", subtitle: "Start organizing todos", angle: -20)
            Form {
                TextField("Full name", text: $name)
                    .textFieldStyle(.roundedBorder)
                    .autocorrectionDisabled()
                    .listRowSeparator(.hidden)
                TextField("Email address", text: $email)
                    .textFieldStyle(.roundedBorder)
                    .textInputAutocapitalization(.none)
                    .autocorrectionDisabled()
                    .listRowSeparator(.hidden)
                TextField("Password", text: $password)
                    .textFieldStyle(.roundedBorder)
                    .listRowSeparator(.hidden)
                
                TLButton(title: "Create account") {
                    // atempt to log in
                }
            }
            .scrollContentBackground(.hidden)
            
            Spacer()
        }
    }
}

#Preview {
    RegisterView()
}
