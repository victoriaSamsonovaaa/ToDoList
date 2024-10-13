//
//  LoginView.swift
//  ToDoList
//
//  Created by Victoria Samsonova on 13.10.24.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    var body: some View {
        NavigationView {
            VStack {
                HeaderView()
                Form {
                    TextField("Email address", text: $email)
                        .textFieldStyle(.roundedBorder)
                        .listRowSeparator(.hidden)
                    SecureField("Password", text: $password)
                        .textFieldStyle(.roundedBorder)
                        .listRowSeparator(.hidden)
                    
                    Button {
                        
                    } label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundStyle(Color(#colorLiteral(red: 1, green: 0.5424868464, blue: 1, alpha: 1)))
                            Text("Log in")
                                .foregroundStyle(Color.white)
                                .bold()
                        }
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
