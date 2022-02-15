//
//  InsetMapView.swift
//  EndangeredAnimalsKR
//
//  Created by Jacob Ko on 2022/02/15.
//

import SwiftUI
import MapKit

struct InsetMapView: View {
	
	// MARK: -  PROPERTY
	
	// MKCoordinateRegion: 위도, 경도 위치 지정
	// MKCoordinateSpan: zoom level 선택
	@State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude:  36.3661298028266, longitude: 127.76771210186868), span: MKCoordinateSpan(latitudeDelta: 5.0, longitudeDelta: 5.0))
	
	// MARK: -  BODY
	var body: some View {
		Map(coordinateRegion: $region)
			.overlay(
				NavigationLink(destination: MapView()) {
					HStack {
						Image(systemName: "mappin.circle")
							.foregroundColor(.white)
							.imageScale(.large)
						
						Text("주요 서식지")
							.foregroundColor(.accentColor)
							.fontWeight(.bold)
					} //: HSTACK
					.padding(.vertical, 10)
					.padding(.horizontal, 14)
					.background(
						Color.black
							.opacity(0.4)
							.cornerRadius(10)
					)
				} //: NAVIGATION
					.padding(8)
				,alignment: .topTrailing
			)
			.frame(height: 256)
			.cornerRadius(12)
	}
}

// MARK: -  PREVIEW
struct InsetMapView_Previews: PreviewProvider {
	static var previews: some View {
		InsetMapView()
			.previewLayout(.sizeThatFits)
			.padding()
	}
}
