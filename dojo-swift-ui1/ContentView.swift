//
//  ContentView.swift
//  dojo-swift-ui1
//
//  Created by Dennis Merli on 19/08/19.
//  Copyright © 2019 Dennis Merli. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var email: String = ""
    @State var password: String = ""
    
    var body: some View {
        NavigationView {
            ZStack {
                Image("background")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .edgesIgnoringSafeArea(.all)
                
                VStack {
                    Group {
                        TextField("Enter your e-mail", text: $email)
                            .textContentType(.emailAddress)
                        SecureField("Enter your password", text: $password)
                    }
                    .frame(width: UIScreen.main.bounds.size.width - 80, height: 41, alignment: .center)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    NavigationLink(destination: DetailView(), label: {
                        Text("Login")
                            .font(.body)
                            .foregroundColor(Color.white)
                            .padding(EdgeInsets(top: 10, leading: 50, bottom: 10, trailing: 50))
                    }).background(Color("buttonColor"))
                      .cornerRadius(10)
                }
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
