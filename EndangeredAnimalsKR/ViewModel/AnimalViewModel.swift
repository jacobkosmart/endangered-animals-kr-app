//
//  ContentViewModel.swift
//  EndangeredAnimalsKR
//
//  Created by Jacob Ko on 2022/02/15.
//

import SwiftUI

class AnimalViewModel: ObservableObject {
	// MARK: -  PROPERTY
	@Published var animals: [Animal] = Bundle.main.decode("animals.json")
	@Published var isGridViewActive: Bool = false
	@Published var flexGridLayout: [GridItem] = [GridItem(.flexible())]
	@Published var gridColumn: Int = 1
	@Published var toolbarIcon: String = "square.grid.2x2"
	
	let haptics = UIImpactFeedbackGenerator(style: .medium)
	
	// default gridLayout
	let gridLayout: [GridItem] = Array(repeating: GridItem(.flexible()), count: 2)
	
	// MARK: -  FUNCTION
	func gridSwitch() {
		flexGridLayout = Array(repeating: .init(.flexible()), count: flexGridLayout.count % 3 + 1)
		gridColumn = flexGridLayout.count
		print("Grid Number: \(gridColumn)")
		
		// Dynamic ToolBar Image
		switch gridColumn {
		case 1:
			toolbarIcon = "square.grid.2x2"
		case 2:
			toolbarIcon = "square.grid.3x2"
		case 3:
			toolbarIcon = "rectangle.grid.1x2"
		default:
			toolbarIcon = "square.grid.2x2"
		}
	}
	
}
