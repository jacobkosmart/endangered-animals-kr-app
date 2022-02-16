//
//  VideoModel.swift
//  EndangeredAnimalsKR
//
//  Created by Jacob Ko on 2022/02/16.
//

import Foundation

struct Video: Codable, Identifiable {
	let id: String
	let name: String
	let headline: String
	let videoid: String
}
