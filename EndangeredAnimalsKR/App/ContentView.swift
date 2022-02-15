//
//  ContentView.swift
//  EndangeredAnimalsKR
//
//  Created by Jacob Ko on 2022/02/14.
//

import SwiftUI

struct ContentView: View {
	// MARK: -  PROPERTY
	@ObservedObject var animalViewModel: AnimalViewModel = AnimalViewModel()
	// MARK: -  BODY
	var body: some View {
		NavigationView {
			List {
				CoverImageView()
					.frame(height: 300)
					.listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
				
				ForEach(animalViewModel.animals) { animal in
					NavigationLink(destination: AnimalDetailView(animal: animal)) {
						AnimalListItemView(animal: animal)
							.listRowInsets(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 0))
					} //: Link
				}
			} //: LIST
			.navigationBarTitle("한국 멸종위기 동물들", displayMode: .large)
			.listStyle(.plain)
		} //: NAVIGATION
	}
}

// MARK: -  PREVIEW
struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		ContentView()
	}
}
