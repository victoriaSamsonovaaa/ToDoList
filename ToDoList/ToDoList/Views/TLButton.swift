//
//  TLButton.swift
//  ToDoList
//
//  Created by Victoria Samsonova on 14.10.24.
//

import SwiftUI

struct TLButton: View {
    let title: String
    let action: () -> Void
    
    var body: some View {
        Button {
            action()
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundStyle(Color(#colorLiteral(red: 1, green: 0.5424868464, blue: 1, alpha: 1)))
                Text(title)
                    .foregroundStyle(Color.white)
                    .bold()
            }
        }
    }
}

#Preview {
    TLButton(title: "Value") {
        //action
    }
}
