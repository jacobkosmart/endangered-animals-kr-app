//
//  LocationModel.swift
//  EndangeredAnimalsKR
//
//  Created by Jacob Ko on 2022/02/16.
//

import Foundation
import MapKit

struct AnimalLocation: Codable, Identifiable {
	var id: String
	var image: String
	var name: String
	var latitude: Double
	var longitude: Double
	
	// Computed Property
	var location: CLLocationCoordinate2D {
		CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
	}
}
