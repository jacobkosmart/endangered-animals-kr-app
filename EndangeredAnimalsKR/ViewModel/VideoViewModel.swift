//
//  VideoViewModel.swift
//  EndangeredAnimalsKR
//
//  Created by Jacob Ko on 2022/02/16.
//

import SwiftUI

class VideoViewModel: ObservableObject {
	@Published  var videos: [Video] = Bundle.main.decode("videos.json")
	
	let hapticImpact = UIImpactFeedbackGenerator(style: .medium)
}
