//
//  CoverImageViewModel.swift
//  EndangeredAnimalsKR
//
//  Created by Jacob Ko on 2022/02/15.
//

import Foundation

class CoverImageViewModel: ObservableObject {
	@Published var coverImages: [CoverImage] = Bundle.main.decode("covers.json")
}
