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
		ZStack {
			Image("background")
				.resizable()
				.aspectRatio(contentMode: .fill)
				.padding(.top)
			VStack {
				Text("Email")
					.bold()
				TextField("", text: $email)
					.frame(width: 250, height: 30, alignment: .center)
					.textFieldStyle(RoundedBorderTextFieldStyle())
				Text("Password").bold()
				TextField("", text: $password)
					.frame(width: 250, height: 30, alignment: .center)
					.textFieldStyle(RoundedBorderTextFieldStyle())
				Button( action: {
					//action
				}) {
					Text("Login")
						.font(.body)
						.foregroundColor(Color.white)
						.padding(EdgeInsets(top: 10, leading: 50, bottom: 10, trailing: 50))
				}
				.background(Color.blue)
				.cornerRadius(10)
			}
		}
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
