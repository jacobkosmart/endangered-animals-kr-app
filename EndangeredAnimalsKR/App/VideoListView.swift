//
//  VideoListView.swift
//  EndangeredAnimalsKR
//
//  Created by Jacob Ko on 2022/02/14.
//

import SwiftUI

struct VideoListView: View {
	// MARK: -  PROPERTY
	
	@StateObject var videoViewModel: VideoViewModel = VideoViewModel()
	
	// MARK: -  BODY
	var body: some View {
		NavigationView {
			List {
				ForEach(videoViewModel.videos) { video in
					NavigationLink(destination: VideoPlayerView(video: video)) {
						VideoListItem(video: video)
							.padding(.vertical, 8)
					} //: Link
				} //: LOOP
			} //: LIST
			.listStyle(.insetGrouped)
			.navigationBarTitle("비디오", displayMode: .inline)
			.toolbar {
				ToolbarItem(placement: .navigationBarTrailing) {
					Button {
						// Shuffle videos
						videoViewModel.videos.shuffle()
						videoViewModel.hapticImpact.impactOccurred()
					} label: {
						Image(systemName: "arrow.2.squarepath")
					}
				}
			}
		} //: NAVIGATION
	}
}

// MARK: -  PREVIEW
struct VideoListView_Previews: PreviewProvider {
	static var previews: some View {
		VideoListView()
	}
}
