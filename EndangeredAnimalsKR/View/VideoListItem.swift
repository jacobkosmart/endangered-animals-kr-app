//
//  VideoListItem.swift
//  EndangeredAnimalsKR
//
//  Created by Jacob Ko on 2022/02/16.
//

import SwiftUI

struct VideoListItem: View {
	// MARK: -  PROPERTY
	
	let video: Video
	
	// MARK: -  BODY
	var body: some View {
		HStack (spacing: 10) {
			ZStack {
				Image(video.id)
					.resizable()
					.scaledToFill()
					.frame(width: 120, height: 90)
				.cornerRadius(10)
				
				Image(systemName: "play.circle")
					.resizable()
					.scaledToFit()
					.frame(height: 32)
					.shadow(radius: 5)
			} //: ZSTACK
			
			VStack(alignment: .leading, spacing: 10) {
				Text(video.name)
					.font(.title2)
					.fontWeight(.heavy)
					.foregroundColor(.accentColor)
				
				Text(video.headline)
					.font(.footnote)
					.multilineTextAlignment(.leading)
					.lineLimit(2)
			} //: VSTACK
		} //: HSTACK
	}
}

// MARK: -  PREVIEW
struct VideoListItem_Previews: PreviewProvider {
	static let videos: [Video] = Bundle.main.decode("videos.json")
	
	static var previews: some View {
		VideoListItem(video: videos[0])
			.previewLayout(.sizeThatFits)
			.padding()
	}
}
