//
//  CustomFonts.swift
//  EndangeredAnimalsKR
//
//  Created by Jacob Ko on 2022/02/17.
//

import SwiftUI

enum FontsName: String {
	case bold = "GmarketSansTTFBold"
	case medium = "GmarketSansTTFMedium"
	case light = "GmarketSansTTFLight"
}

struct CustomFonts: ViewModifier {
	var fontName: FontsName
	var size: CGFloat
	func body(content: Content) -> some View {
		content // Text
			.font(.custom(fontName.rawValue, size: size))
	}
}
