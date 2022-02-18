//
//  CreditsView.swift
//  EndangeredAnimalsKR
//
//  Created by Jacob Ko on 2022/02/17.
//

import SwiftUI

struct CreditsView: View {
	
	// MARK: -  BODY
	var body: some View {
		VStack {
			Text("""
	Copyright © Jacob Ko
	All right reserved
	Created by SwiftUI with MVVM architecture
	""")
				.font(.footnote)
			.multilineTextAlignment(.center)
		} //: VSTACK
		.padding()
		.opacity(0.4)
	}
}

// MARK: -  PREVIEW
struct CreditsView_Previews: PreviewProvider {
	static var previews: some View {
		CreditsView()
			.previewLayout(.sizeThatFits)
			.padding()
	}
}
