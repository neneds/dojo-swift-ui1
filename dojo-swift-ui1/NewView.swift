//
//  NewView.swift
//  dojo-swift-ui1
//
//  Created by Joao Paulo Lopes da Silva on 20/08/19.
//  Copyright © 2019 Dennis Merli. All rights reserved.
//

import SwiftUI

struct NewView: View {
	 @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>

	 var btnBack : some View { Button(action: {
		 self.presentationMode.value.dismiss()
		 }) {
			 HStack {
			 Image(systemName: "chevron.compact.left")
				 .aspectRatio(contentMode: .fit)
				 .foregroundColor(.blue)
				 Text("Back")
			 }
		 }
	 }

	 var body: some View {
		Text("New View")
		 .navigationBarBackButtonHidden(true)
		 .navigationBarItems(leading: btnBack)
	 }
}
