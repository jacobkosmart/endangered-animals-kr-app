//
//  HeadingView.swift
//  EndangeredAnimalsKR
//
//  Created by Jacob Ko on 2022/02/15.
//

import SwiftUI

struct HeadingView: View {
	// MARK: -  PROPERTY
	
	var headingImage: String
	var headingText: String
	
	// MARK: -  BODY
	var body: some View {
		
		HStack {
			Image(systemName: headingImage)
				.foregroundColor(.accentColor)
				.imageScale(.large)
			
			Text(headingText)
				.modifier(CustomFonts(fontName: .bold, size: 20))
			
		} //: HSTACK
		.padding(.vertical)
	}
}


// MARK: -  PREVIEW
struct HeadingView_Previews: PreviewProvider {
	static var previews: some View {
		HeadingView(headingImage: "photo.on.rectangle.angled", headingText: "야생에서 사진들")
			.previewLayout(.sizeThatFits)
			.padding()
	}
}
