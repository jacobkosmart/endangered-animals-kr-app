//
//  MainView.swift
//  EndangeredAnimalsKR
//
//  Created by Jacob Ko on 2022/02/14.
//

import SwiftUI

struct MainView: View {
	var body: some View {
		TabView {
			ContentView()
				.tabItem {
					Image(systemName: "square.grid.2x2")
					Text("둘러보기")
				}
			
			VideoListView()
				.tabItem {
					Image(systemName: "play.rectangle")
					Text("비디오")
				}
			
			MapView()
				.tabItem {
					Image(systemName: "map")
					Text("지도")
				}
			
			GalleryView()
				.tabItem {
					Image(systemName: "photo")
					Text("사진")
				}
		} //: TAB
	}
}

struct MainView_Previews: PreviewProvider {
	static var previews: some View {
		MainView()
	}
}
