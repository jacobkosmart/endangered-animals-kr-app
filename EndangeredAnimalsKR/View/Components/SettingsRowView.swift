//
//  SettingsRowView.swift
//  EndangeredAnimalsKR
//
//  Created by Jacob Ko on 2022/02/17.
//

import SwiftUI

struct SettingsRowView: View {
	// MARK: -  PROPERTY
	
	var name: String
	// optional content, linkLabel, linkDestination
	var content: String? = nil
	var linkLabel: String? = nil
	var linkDestination: String? = nil
	
	// MARK: -  BODY
	var body: some View {
		VStack {
			Divider().padding(.vertical, 4)
			
			HStack {
				Text(name).foregroundColor(Color.gray)
				Spacer()
				// Conditional row
				// 1. name, content 만 있는 경우
				if (content != nil) {
					Text(content!).fontWeight(.bold)
					// 2. linkLabel, linkDestination 이 있는경우
				} else if (linkLabel != nil && linkDestination != nil) {
					Link(
						destination: URL(string: "https://\(linkDestination!)")!, label: {
							Text(linkLabel!).fontWeight(.bold)
								.foregroundColor(.primary)
						})
					Image(systemName:"arrow.up.right.square").foregroundColor(.accentColor)
					// 3. 아무것도 해당 안될때는 EmptyView() 나타냄
				} else {
					EmptyView()
				}
			} //: HSTACK
		} //: VSTACK
	}
}

// MARK: -  PREVIEW
struct SettingsRowView_Previews: PreviewProvider {
	static var previews: some View {
		Group {
			SettingsRowView(name: "Developer", content: "Jacob Taehyun Ko")
				.previewLayout(.fixed(width: 375, height: 60))
				.preferredColorScheme(.dark)
				.padding()
			SettingsRowView(name: "Website", linkLabel: "Jacob's DevLog", linkDestination: "jacobko.info")
				.preferredColorScheme(.dark)
				.previewLayout(.fixed(width: 375, height: 60))
				.padding()
		}
	}
}


