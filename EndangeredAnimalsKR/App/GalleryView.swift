//
//  GalleryView.swift
//  EndangeredAnimalsKR
//
//  Created by Jacob Ko on 2022/02/14.
//

import SwiftUI

struct GalleryView: View {
	var body: some View {
		NavigationView {
			ScrollView(.vertical, showsIndicators: false) {
				
			} //: SCROLL
			.frame(maxWidth: .infinity, maxHeight: .infinity)
			.background(MotionAnimationView())
			.navigationBarTitle("사진", displayMode: .inline)
		}
	} //: NAVIGATION
}

struct GalleryView_Previews: PreviewProvider {
	static var previews: some View {
		GalleryView()
	}
}
