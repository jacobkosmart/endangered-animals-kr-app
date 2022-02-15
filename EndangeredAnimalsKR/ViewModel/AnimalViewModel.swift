//
//  ContentViewModel.swift
//  EndangeredAnimalsKR
//
//  Created by Jacob Ko on 2022/02/15.
//

import Foundation

class AnimalViewModel: ObservableObject {
	@Published var animals: [Animal] = Bundle.main.decode("animals.json")
}
