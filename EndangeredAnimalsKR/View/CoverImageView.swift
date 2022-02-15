//
//  CoverImageView.swift
//  EndangeredAnimalsKR
//
//  Created by Jacob Ko on 2022/02/14.
//

import SwiftUI

struct CoverImageView: View {
	// MARK: -  PROPERTY
	
	@ObservedObject var coverImageViewModel: CoverImageViewModel = CoverImageViewModel()
	
	// MARK: -  BODY
	var body: some View {
		TabView {
			ForEach(coverImageViewModel.coverImages) { item in
				Image(item.name)
					.resizable()
				.scaledToFill()
			} //: LOOP
		} //: TAB
		.tabViewStyle(.page)
	}
}

// MARK: -  PREVIEW
struct CoverImageView_Previews: PreviewProvider {
	static var previews: some View {
		CoverImageView()
			.previewLayout(.fixed(width: 400, height: 300))
	}
}
