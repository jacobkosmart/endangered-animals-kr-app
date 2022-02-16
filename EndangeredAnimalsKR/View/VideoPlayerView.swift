//
//  VideoPlayerView.swift
//  EndangeredAnimalsKR
//
//  Created by Jacob Ko on 2022/02/16.
//

import SwiftUI

struct VideoPlayerView: View {
	// MARK: -  PROPERTY
	let video: Video

	// MARK: -  BODY
	var body: some View {
		NavigationView {
			VStack {
				YoutubeView(videoID: video.videoid)
			} //: VSTACK
			.navigationBarTitle(video.name, displayMode: .inline)
		} //: NAVIGATION
	}
}

// MARK: -  PREVIEW
struct VideoPlayerView_Previews: PreviewProvider {
	static var videos: [Video] = Bundle.main.decode("videos.json")
	
	static var previews: some View {
			VideoPlayerView(video: videos[0])
	}
}
