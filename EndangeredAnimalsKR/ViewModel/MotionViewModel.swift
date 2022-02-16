//
//  MotionViewModel.swift
//  EndangeredAnimalsKR
//
//  Created by Jacob Ko on 2022/02/16.
//

import SwiftUI

class MotionViewModel: ObservableObject {
	// MARK: -  PROPERTY
	@Published var randomCircle = Int.random(in: 12...16)
	
	// MARK: -  FUNCTION
	
	// 1. Random Coordinate
	func randomCoordinate(max: CGFloat) -> CGFloat {
		return CGFloat.random(in: 0...max)
	}
	
	// 2. Random Size
	func randomSize() -> CGFloat {
		return CGFloat(Int.random(in: 10...300))
	}
	
	// 3. Random Scale
	func randomScale() -> CGFloat {
		return CGFloat(Double.random(in: 0.1...2.0))
	}
	
	// 4. Random Speed
	func randomSpeed() -> Double {
		return Double.random(in: 0.025...1.0)
	}
	
	// 5. Random Delay
	func randomDelay() -> Double {
		return Double.random(in: 0...2)
	}
}
