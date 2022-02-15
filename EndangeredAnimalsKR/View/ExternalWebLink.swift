//
//  ExternalWebLink.swift
//  EndangeredAnimalsKR
//
//  Created by Jacob Ko on 2022/02/15.
//

import SwiftUI

struct ExternalWebLink: View {
	// MARK: -  PROPERTY
	
	let animal: Animal
	
	// MARK: -  BODY
	var body: some View {
		GroupBox {
			HStack {
				Image(systemName: "globe")
				Text("멸종위기 야생생물 포털")
				Spacer()
				
				Group {
					Image(systemName: "arrow.up.right.square")
					Link(animal.name, destination: (URL(string: animal.link) ?? URL(string: "https://"))!)
				}
				.foregroundColor(.accentColor)
			} //: HSTACK
		} //: BOX
	}
}

// MARK: -  PREVIEW
struct ExternalWebLink_Previews: PreviewProvider {
	static let animals: [Animal] = Bundle.main.decode("animals.json")
	static var previews: some View {
		ExternalWebLink(animal: animals[0])
			.previewLayout(.sizeThatFits)
			.padding()
	}
}
