//
//  AnimalModel.swift
//  EndangeredAnimalsKR
//
//  Created by Jacob Ko on 2022/02/15.
//

import SwiftUI

struct Animal: Codable, Identifiable {
	let id: String
	let name: String
	let headline: String
	let description: String
	let link: String
	let image: String
	let gallery: [String]
	let fact: [String]
	let copyright: String
}
