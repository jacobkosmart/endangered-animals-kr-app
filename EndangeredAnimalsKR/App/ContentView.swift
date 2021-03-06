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
			// MARK: -  Initial List View
			Group {
				if !animalViewModel.isGridViewActive {
					List {
						CoverImageView()
							.frame(height: UIScreen.main.bounds.size.height * 0.4)
							.listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
						
						// AD
						BannerAd(unitID: "ca-app-pub-8787171365157933/2845789069")
						
						ForEach(animalViewModel.animals) { animal in
							NavigationLink(destination: AnimalDetailView(animal: animal)) {
								AnimalListItemView(animal: animal)
									.listRowInsets(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 0))
							} //: Link
						} //: LOOP
						BannerAd(unitID: "ca-app-pub-8787171365157933/2845789069")
						CreditsView()
							.modifier(CenterModifier())
					} //: LIST
					// MARK: -  Grid View
				} else {
					ScrollView(.vertical, showsIndicators: false) {
						BannerAd(unitID: "ca-app-pub-8787171365157933/2845789069")
						LazyVGrid(columns: animalViewModel.flexGridLayout, alignment: .center, spacing: 10) {
							ForEach(animalViewModel.animals) { animal in
								NavigationLink(destination: AnimalDetailView(animal: animal)) {
									AnimalGridItemView(animal: animal)
								} //: Link
							} //: LOOP
						} //: GRID
						.padding(10)
						.animation(.easeIn)
						BannerAd(unitID: "ca-app-pub-8787171365157933/2845789069")
						CreditsView()
					} //: SCROLL
				} //: CONDITION
			} //: GROUP
			.navigationBarTitle("한국 멸종위기 동물들", displayMode: .large)
			.listStyle(.plain)
			.toolbar {
				ToolbarItem(placement: .navigationBarTrailing) {
					HStack (spacing: 10) {
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
						
						// App Information
						Button {
							animalViewModel.showAppInfo.toggle()
						} label: {
							Image(systemName: "info.circle")
								.font(.title3)
								.foregroundColor(.accentColor)
						}
						.sheet(isPresented: $animalViewModel.showAppInfo) {
							AppInfoView()
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
