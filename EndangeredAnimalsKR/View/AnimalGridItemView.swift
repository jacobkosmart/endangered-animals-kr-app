//
//  AnimalGridItemView.swift
//  EndangeredAnimalsKR
//
//  Created by Jacob Ko on 2022/02/17.
//

import SwiftUI

struct AnimalGridItemView: View {
	// MARK: -  PROPERTY
	
	let animal: Animal
	
	// MARK: -  BODY
	var body: some View {
		Image(animal.image)
			.resizable()
			.scaledToFit()
			.cornerRadius(12)
	}
}

// MARK: -  PREVIEW
struct AnimalGridItemView_Previews: PreviewProvider {
	static let animals: [Animal] = Bundle.main.decode("animals.json")
	static var previews: some View {
		AnimalGridItemView(animal: animals[0])
			.previewLayout(.sizeThatFits)
			.padding()
	}
}
