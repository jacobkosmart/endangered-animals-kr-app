//
//  SplashScreen.swift
//  EndangeredAnimalsKR
//
//  Created by Jacob Ko on 2022/02/17.
//

import SwiftUI

struct SplashScreen: View {
	// MARK: -  PROPERTY
	
	@State private var isActive: Bool = false
	@State private var size: Double = 0.8
	@State private var opacity: Double = 0.5
	
	
	// MARK: -  BODY
	var body: some View {
		if isActive {
			MainView()
		} else {
			VStack {
				VStack (spacing: 20) {
					Image("intro")
						.resizable()
						.scaledToFit()
						.frame(width: 150, height: 150)
					
					Text("한국의 멸종 위기 동물들")
						.modifier(CustomFonts(fontName: .bold, size: 25))
						.foregroundColor(.accentColor.opacity(0.8))
				} //: VSTACK
				.scaleEffect(size)
				.opacity(opacity)
				.onAppear {
					withAnimation(.easeIn(duration: 1.2)) {
						self.size = 0.9
						self.opacity = 1.0
					}
				}
			} //: VSTACK
			.onAppear {
				DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
					withAnimation {
						self.isActive = true
					}
				}
			}
		}
	}
}
// MARK: -  PREVIEW
struct SplashScreen_Previews: PreviewProvider {
	static var previews: some View {
		SplashScreen()
	}
}
