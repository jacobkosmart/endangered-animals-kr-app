//
//  GalleryView.swift
//  EndangeredAnimalsKR
//
//  Created by Jacob Ko on 2022/02/14.
//

import SwiftUI

struct GalleryView: View {
	// MARK: -  PROPERTY
	
	@State  private var selectedAnimal: String = "tiger"
	let animals: [Animal] = Bundle.main.decode("animals.json")
	let haptics = UIImpactFeedbackGenerator(style: .medium)

	// Simple Grid Definition
	// let gridLayout: [GridItem] = [
	// 	GridItem(.flexible()),
	// 	GridItem(.flexible()),
	// 	GridItem(.flexible())
	// ]
	
	// Efficient Grid Definition
	// let gridLayout: [GridItem] = Array(repeating: GridItem(.flexible()), count: 4)
	
	
	// Dynamic Grid Layout
	@State private var gridLayout: [GridItem] = [GridItem(.flexible())]
	@State private var gridColumn: Double = 4.0
	
	// MARK: -  BODY
	var body: some View {
		NavigationView {
			ScrollView(.vertical, showsIndicators: false) {
				VStack (alignment: .center, spacing: 30){
					// MARK: -  IMAGE
					Image(selectedAnimal)
						.resizable()
						.scaledToFill()
						.clipShape(Circle())
						.overlay(Circle().stroke(Color.accentColor, lineWidth: 8))
					
					// MARK: -  SLIDER
					Slider(value: $gridColumn, in:2...4, step: 1)
						.padding(.horizontal)
						.onChange(of: gridColumn) { value in
							gridSwitch()
						}
					// MARK: -  GRID
					LazyVGrid(columns: gridLayout, alignment: .center, spacing: 20) {
						ForEach(animals) { item in
							Image(item.image)
								.resizable()
								.scaledToFit()
								.clipShape(Circle())
								.overlay(Circle().stroke(Color.white, lineWidth: 1))
								.onTapGesture {
									selectedAnimal = item.image
									haptics.impactOccurred()
								}
						} //: LOOP
					} //: GRID
					.animation(.easeIn)
					.onAppear {
						gridSwitch()
					}
				} //: VSTACK
				.padding(.horizontal, 10)
				.padding(.vertical, 50)
				
			} //: SCROLL
			.frame(maxWidth: .infinity, maxHeight: .infinity)
			.background(MotionAnimationView())
			.navigationBarTitle("사진", displayMode: .inline)
		}
	} //: NAVIGATION
	
	// MARK: -  FUNCTION
	func gridSwitch() {
		gridLayout = Array(repeating: .init(.flexible()), count: Int(gridColumn))
	}
}

// MARK: -  PREVIEW
struct GalleryView_Previews: PreviewProvider {
	static var previews: some View {
		GalleryView()
	}
}
