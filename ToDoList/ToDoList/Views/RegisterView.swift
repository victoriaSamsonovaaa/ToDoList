//
//  RegisterView.swift
//  ToDoList
//
//  Created by Victoria Samsonova on 13.10.24.
//

import SwiftUI

struct RegisterView: View {
    @StateObject var viewModel = RegisterViewViewModel()
    
    var body: some View {
        VStack {
            HeaderView(title: "Register", subtitle: "Start organizing todos", angle: -20)
            Form {
                if !viewModel.errorMessage.isEmpty {
                    Text(viewModel.errorMessage)
                        .foregroundStyle(Color.red)
                }
                
                TextField("Full name", text: $viewModel.name)
                    .textFieldStyle(.roundedBorder)
                    .autocorrectionDisabled()
                    .listRowSeparator(.hidden)
                TextField("Email address", text: $viewModel.email)
                    .textFieldStyle(.roundedBorder)
                    .textInputAutocapitalization(.none)
                    .autocorrectionDisabled()
                    .listRowSeparator(.hidden)
                SecureField("Password", text: $viewModel.password)
                    .textFieldStyle(.roundedBorder)
                    .listRowSeparator(.hidden)
                
                TLButton(title: "Create account") {
                    viewModel.register()
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
