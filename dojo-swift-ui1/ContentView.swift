//
//  ContentView.swift
//  dojo-swift-ui1
//
//  Created by Dennis Merli on 19/08/19.
//  Copyright © 2019 Dennis Merli. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var email: String
    @State var password: String
    
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.clear)
                .background(LinearGradient(gradient: Gradient(colors: [Color("pinkff00cc"), Color("blue333399")]), startPoint: .leading, endPoint: .trailing))
                .edgesIgnoringSafeArea(.all)
            VStack {
                Group {
                    TextField("Email", text: $email)
                    SecureField("Password", text: $password)
                    
                }.frame(width: UIScreen.main.bounds.size.width - 80, height: 41, alignment: .center)
                    .textContentType(.emailAddress)
                    .background(Color.black.opacity(0.6))
                    .cornerRadius(10)
                    .multilineTextAlignment(.center)
                .zIndex(1)
            }
        }
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(email: "", password: "")
    }
}
#endif
