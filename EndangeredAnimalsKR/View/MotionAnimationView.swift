//
//  MotionAnimationView.swift
//  EndangeredAnimalsKR
//
//  Created by Jacob Ko on 2022/02/16.
//

import SwiftUI

struct MotionAnimationView: View {
	// MARK: -  PROPERTY
	
	@StateObject var motionViewModel: MotionViewModel = MotionViewModel()
	@State private var isAnimating: Bool = false
	
	// MARK: -  BODY
	var body: some View {
		GeometryReader { geometry in
			ZStack {
				ForEach(0...motionViewModel.randomCircle, id: \.self) { item in
					Circle()
						.foregroundColor(.gray)
						.opacity(0.15)
						.frame(width: motionViewModel.randomSize(), height: motionViewModel.randomSize(), alignment: .center)
						.scaleEffect(isAnimating ? motionViewModel.randomScale() : 1)
						.position(
							x: motionViewModel.randomCoordinate(max: geometry.size.width),
							y: motionViewModel.randomCoordinate(max: geometry.size.height))
						.animation(
							Animation.interpolatingSpring(stiffness: 0.5, damping: 0.5).repeatForever()
								.speed(motionViewModel.randomSpeed())
								.delay(motionViewModel.randomDelay())
						)
						.onAppear {
							isAnimating = true
						}
				} //: LOOP
				// Text("with: \(Int(geometry.size.width))  hight: \(Int(geometry.size.height))")
			} //: ZSTACK
			.drawingGroup()
		} //: GEOMETRY
	}
}

// MARK: -  PREVIEW
struct MotionAnimationView_Previews: PreviewProvider {
	static var previews: some View {
		MotionAnimationView()
	}
}
