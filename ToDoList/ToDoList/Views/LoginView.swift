//
//  LoginView.swift
//  ToDoList
//
//  Created by Victoria Samsonova on 13.10.24.
//

import SwiftUI

struct LoginView: View {
    @StateObject var viewModel = LoginViewViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                HeaderView(title: "To Do List", subtitle: "Get things done", angle: 20)
                
                Form {
                    if !viewModel.errorMessage.isEmpty {
                        Text(viewModel.errorMessage)
                            .foregroundStyle(Color.red)
                    }
                    
                    TextField("Email address", text: $viewModel.email)
                        .textFieldStyle(.roundedBorder)
                        .textInputAutocapitalization(.none)
                        .autocorrectionDisabled()
                        .listRowSeparator(.hidden)
                    SecureField("Password", text: $viewModel.password)
                        .textFieldStyle(.roundedBorder)
                        .listRowSeparator(.hidden)
                    
                    TLButton(title: "Log in") {
                        viewModel.login()
                    }
                }
                .scrollContentBackground(.hidden)
                
                VStack {
                    Text("New around here?")
                    NavigationLink("Create an account",
                                   destination: RegisterView())
                    .foregroundStyle(Color(#colorLiteral(red: 1, green: 0.5424868464, blue: 1, alpha: 1)))
                    
                }
                .padding(.bottom, 50)
                Spacer()
            }
        }
    }
}

#Preview {
    LoginView()
}
