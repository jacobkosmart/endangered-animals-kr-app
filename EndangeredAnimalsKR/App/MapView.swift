//
//  MapView.swift
//  EndangeredAnimalsKR
//
//  Created by Jacob Ko on 2022/02/14.
//

import SwiftUI
import MapKit

struct MapView: View {
	// MARK: -  PROPERTY
	
	@State private var region: MKCoordinateRegion = {
		var mapCoordinates = CLLocationCoordinate2D(latitude: 38.62555833592719, longitude: 128.1407210768489)
		
		var mapZoomLevel = MKCoordinateSpan(latitudeDelta: 6.0, longitudeDelta: 6.0)
		var mapRegion = MKCoordinateRegion(center: mapCoordinates, span: mapZoomLevel)
		
		return mapRegion
	}()
	
	let locations: [AnimalLocation] = Bundle.main.decode("locations.json")
	
	// MARK: -  BODY
	var body: some View {
		// MARK: -  1. Basic Map
		// Map(coordinateRegion: $region)
		
		// MARK: -  2. Map with annotaion
		Map(coordinateRegion: $region, annotationItems: locations) { item in
			// Option A : Pin style (always static) - Old Version
			// MapPin(coordinate: item.location, tint: .accentColor)
			
			// Option B : New style (always static) - New Version
			// MapMarker(coordinate: item.location, tint: .accentColor)
			
			// // Option C : Custom basic annotaion (it could be interactive)
			// MapAnnotation(coordinate: item.location) {
			// 	Image("map-tiger")
			// 		.resizable()
			// 		.scaledToFit()
			// 		.frame(width: 35, height: 35, alignment: .center)
			// } //: ANNOTATION
			
			// Option D : Custom animated Annotation(it could be interactive)
			MapAnnotation(coordinate: item.location) {
				MapAnnotationView(location: item)
			}
		} //: MAP
		.overlay(
			HStack(alignment: .center, spacing: 12) {
				Image("compass")
					.resizable()
					.scaledToFit()
					.frame(width: 48, height: 48)
				
				VStack(alignment: .leading, spacing: 3) {
					HStack {
						Text("위도:")
							.font(.footnote)
							.fontWeight(.bold)
							.foregroundColor(.accentColor)
						Spacer()
						Text("\(region.center.latitude)")
							.font(.footnote)
							.foregroundColor(.white)
					} //: HSTACK
					Divider()
					HStack {
						Text("경도:")
							.font(.footnote)
							.fontWeight(.bold)
							.foregroundColor(.accentColor)
						Spacer()
						Text("\(region.center.longitude)")
							.font(.footnote)
							.foregroundColor(.white)
					} //: HSTACK
				}
			} //: HSTACK
				.padding(.vertical, 12)
				.padding(.horizontal, 16)
				.background(
					Color.black
						.cornerRadius(10)
						.opacity(0.3)
				)
				.padding()
			, alignment: .top
		)
	}
}

// MARK: -  PREVIEW
struct MapView_Previews: PreviewProvider {
	static var previews: some View {
		MapView()
	}
}
