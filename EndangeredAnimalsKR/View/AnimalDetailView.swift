//
//  AnimalDetailView.swift
//  EndangeredAnimalsKR
//
//  Created by Jacob Ko on 2022/02/15.
//

import SwiftUI

struct AnimalDetailView: View {
	// MARK: -  PROPERTY
	
	let animal: Animal
	
	// MARK: -  BODY
	var body: some View {
		ScrollView(.vertical, showsIndicators: false) {
			VStack(alignment: .center, spacing: 20) {
				// HERO IMAGE
				Image(animal.image)
					.resizable()
					.scaledToFit()
				// TITLE
				Text(animal.name)
					.font(.largeTitle)
					.fontWeight(.heavy)
					.multilineTextAlignment(.center)
					.padding(.vertical, 8)
					.foregroundColor(.primary)
					.background(
						Color.accentColor
							.frame(height: 6)
							.offset(y: 24)
					)
				// HEADLINE
				Text(animal.headline)
					.font(.headline)
					.multilineTextAlignment(.leading)
					.foregroundColor(.accentColor)
					.padding(.horizontal)
				// GALLERY
				Group {
					HeadingView(headingImage: "photo.on.rectangle.angled", headingText: "\(animal.name) 사진들")
					
					InsetGalleryView(animal: animal)
				}
				.padding(.horizontal)
				
				// DESCRIPTION
				Group {
					HeadingView(headingImage: "info.circle", headingText: "\(animal.name) 자세한 정보")
					
					Text(animal.description)
						.multilineTextAlignment(.leading)
						.layoutPriority(1)
						.padding(.horizontal)
				}
				
				// FACTS
				Group {
					HeadingView(headingImage: "location.magnifyingglass", headingText: "분포")
					
					InsetFactView(animal: animal)
				}
				
				// MAP
				Group {
					HeadingView(headingImage: "map", headingText: "지도")
					
					InsetMapView()
				}
				.padding(.horizontal)
				
				// LINK
				Group {
					HeadingView(headingImage: "books.vertical", headingText: "참고 자료")
					
					ExternalWebLink(animal: animal)
				}
				.padding(.horizontal)
				
				// COPYRIGHT
				Text(animal.copyright)
					.font(.footnote)
					.multilineTextAlignment(.leading)
					.foregroundColor(.secondary)
					.padding()
			} //: VSTACK
			.navigationBarTitle("\(animal.name) 자세히 알아보기", displayMode: .inline)
		} //: SCROLL
	}
}

// MARK: -  PREVIEW
struct AnimalDetailView_Previews: PreviewProvider {
	static let animals: [Animal] = Bundle.main.decode("animals.json")
	
	static var previews: some View {
		NavigationView {
			AnimalDetailView(animal: animals[0])
		}
	}
}
