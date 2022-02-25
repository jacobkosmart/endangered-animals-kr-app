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
				// AD
				BannerAd(unitID: "ca-app-pub-8787171365157933/2845789069")
				
				// HERO IMAGE
				Image(animal.image)
					.resizable()
					.scaledToFit()
				// TITLE
				Text(animal.name)
					.modifier(CustomFonts(fontName: .bold, size: 35))
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
					.font(.title3)
					.multilineTextAlignment(.center)
					.foregroundColor(.accentColor)
					.padding()
				// GALLERY
				Group {
					HeadingView(headingImage: "photo.on.rectangle.angled", headingText: "\(animal.name) 사진들")
					
					InsetGalleryView(animal: animal)
				}
				.padding(.horizontal)
				
				// DESCRIPTION
				Group {
					HeadingView(headingImage: "info.circle", headingText: "\(animal.name) 자세한 정보")
					
					LabelAlignment(text: animal.description, textAlignmentStyle: .justified, width: UIScreen.main.bounds.width - 30)
					
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
					
					BannerAd(unitID: "ca-app-pub-8787171365157933/2845789069")
				}
				.padding(.horizontal)
				
				
				// AD
				
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


// MARK: -  LabelAlignment (justify 적용)

struct LabelAlignment: UIViewRepresentable {
	var text: String
	var textAlignmentStyle : TextAlignmentStyle
	var width: CGFloat

	func makeUIView(context: Context) -> UILabel {
			let label = UILabel()
			label.textAlignment = NSTextAlignment(rawValue: textAlignmentStyle.rawValue)!
			label.numberOfLines = 0
			label.preferredMaxLayoutWidth = width
			label.setContentHuggingPriority(.required, for: .horizontal)
			label.setContentHuggingPriority(.required, for: .vertical)

			return label
	}

	func updateUIView(_ uiView: UILabel, context: Context) {
			uiView.text = text
	}
}

enum TextAlignmentStyle : Int{
	 case left = 0 ,center = 1 , right = 2 ,justified = 3 ,natural = 4
}


