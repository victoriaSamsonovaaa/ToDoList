//
//  HeaderView.swift
//  ToDoList
//
//  Created by Victoria Samsonova on 13.10.24.
//

import SwiftUI

struct HeaderView: View {
    let title: String
    let subtitle: String
    let angle: Double
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 0)
                .foregroundStyle(Color(#colorLiteral(red: 1, green: 0.5424868464, blue: 1, alpha: 1)))
                .rotationEffect(Angle(degrees: angle))
                
            VStack {
                Text(title)
                    .font(.system(size: 50))
                    .foregroundStyle(Color.white)
                    .bold()
                Text(subtitle)
                    .font(.system(size: 30))
                    .foregroundStyle(Color.white)
            }
            .padding(.top, 70)
        }
        .frame(width: UIScreen.main.bounds.width * 3,
               height: 350)
        .offset(y: -150)
    }
}

#Preview {
    HeaderView(title: "Title", subtitle: "Subtitle", angle: 20)
}
