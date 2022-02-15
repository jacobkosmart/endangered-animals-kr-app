//
//  CoverImageView.swift
//  EndangeredAnimalsKR
//
//  Created by Jacob Ko on 2022/02/14.
//

import SwiftUI

// MARK: -  PROPERTY

let coverImages: [CoverImage] = Bundle.main.decode("covers.json")

// MARK: -  BODY
struct CoverImageView: View {
	var body: some View {
		TabView {
			ForEach(coverImages) { item in
				Image(item.name)
					.resizable()
				.scaledToFill()
			} //: LOOP
		} //: TAB
		.tabViewStyle(.page)
	}
	
	// MARK: -  FUNCTION
}

// MARK: -  PREVIEW
struct CoverImageView_Previews: PreviewProvider {
	static var previews: some View {
		CoverImageView()
			.previewLayout(.fixed(width: 400, height: 300))
	}
}
