//
//  CenterModifier.swift
//  EndangeredAnimalsKR
//
//  Created by Jacob Ko on 2022/02/17.
//

import SwiftUI

struct CenterModifier: ViewModifier {
	func body(content: Content) -> some View {
		HStack {
			Spacer()
			content
			Spacer()
		} //: HSTACK
	}
}
