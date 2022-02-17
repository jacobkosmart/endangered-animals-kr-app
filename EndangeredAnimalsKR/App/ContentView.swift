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
			Group {
				if !animalViewModel.isGridViewActive {
					List {
						CoverImageView()
							.frame(height: 300)
							.listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
						
						ForEach(animalViewModel.animals) { animal in
							NavigationLink(destination: AnimalDetailView(animal: animal)) {
								AnimalListItemView(animal: animal)
									.listRowInsets(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 0))
							} //: Link
						} //: LOOP
					} //: LIST
				} else {
					ScrollView(.vertical, showsIndicators: false) {
						LazyVGrid(columns: animalViewModel.flexGridLayout, alignment: .center, spacing: 10) {
							ForEach(animalViewModel.animals) { animal in
								NavigationLink(destination: AnimalDetailView(animal: animal)) {
									AnimalGridItemView(animal: animal)
								} //: Link
							} //: LOOP
						} //: GRID
						.padding(10)
						.animation(.easeIn)
					} //: SCROLL
				} //: CONDITION
			} //: GROUP
			.navigationBarTitle("한국 멸종위기 동물들", displayMode: .large)
			.listStyle(.plain)
			.toolbar {
				ToolbarItem(placement: .navigationBarTrailing) {
					HStack (spacing: 16) {
						// List
						Button {
							print("List View is activated")
							animalViewModel.isGridViewActive = false
							animalViewModel.haptics.impactOccurred()
						} label: {
							Image(systemName: "square.fill.text.grid.1x2")
								.font(.title3)
								.foregroundColor(animalViewModel.isGridViewActive ? .primary : .accentColor)
						}
						
						// Grid
						Button {
							print("Grid View is activated")
							animalViewModel.isGridViewActive = true
							animalViewModel.haptics.impactOccurred()
							animalViewModel.gridSwitch()
						} label: {
							Image(systemName: animalViewModel.toolbarIcon)
								.font(.title3)
								.foregroundColor(animalViewModel.isGridViewActive ? .accentColor : .primary)
						}
					} //: HSTACK
				}  //: BUTTON
			}  //: TOOLBAR
		} //: NAVIGATION
	}
}

// MARK: -  PREVIEW
struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		ContentView()
	}
}
