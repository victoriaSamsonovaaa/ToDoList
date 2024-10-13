//
//  HeaderView.swift
//  ToDoList
//
//  Created by Victoria Samsonova on 13.10.24.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 0)
                .foregroundStyle(Color(#colorLiteral(red: 1, green: 0.5424868464, blue: 1, alpha: 1)))
                .rotationEffect(Angle(degrees: 20))
                
            VStack {
                Text("To Do List")
                    .font(.system(size: 50))
                    .foregroundStyle(Color.white)
                    .bold()
                Text("Get things done!")
                    .font(.system(size: 30))
                    .foregroundStyle(Color.white)
            }
            .padding(.top, 40)
        }
        .frame(width: UIScreen.main.bounds.width * 3,
               height: 300)
        .offset(y: -110)
    }
}

#Preview {
    HeaderView()
}
