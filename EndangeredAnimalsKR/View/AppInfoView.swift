//
//  AppInfoView.swift
//  EndangeredAnimalsKR
//
//  Created by Jacob Ko on 2022/02/17.
//

import SwiftUI

struct AppInfoView: View {
	// MARK: -  PROPERTY
	
	@Environment(\.presentationMode) var presentationMode
	
	// MARK: -  BODY
	var body: some View {
		NavigationView {
			ZStack {
				// background
				MotionAnimationView().ignoresSafeArea()
				// contents
				ScrollView(.vertical, showsIndicators: false) {
					VStack(alignment: .center, spacing: 20) {
						
						// MARK: -  SECTION1 : APPLIACTION
						
						GroupBox(
							label: SettingLabelView(labelText: "Application", labelImage: "apps.iphone")
						) {
							// resualble conditional settings row
							SettingsRowView(name: "Developer", content: "Jacob Taehun Ko")
							SettingsRowView(name: "Compatibility", content: "iOS15.2")
							SettingsRowView(name: "Website", linkLabel: "Jacob's DevLog", linkDestination: "jacobko.info")
							SettingsRowView(name: "Github", linkLabel: "Go to Repository", linkDestination: "github.com/jacobkosmart/endangered-animals-kr-app")
							SettingsRowView(name: "Framework", content: "SwiftUI")
							SettingsRowView(name: "Version", content: "1.0.0")
						} //: GROUP
						
						// MARK: -  SECTION2 : Copyright
						GroupBox(
							label: SettingLabelView(labelText: "Copyright", labelImage: "c.circle")
						) {
							Divider().padding(.vertical, 4)
							// 공공누리
							HStack(alignment: .center, spacing: 10) {
								Image("copyright")
									.resizable()
									.scaledToFit()
									.frame(width: 120)
								Text("저작권법 제24조의2(공공저작물의 자유이용)에 따라 한국문화정보원에서 저작재산권의 전부를 보유하고 있거나 자유이용허락표시에 대한 권리자의 동의를 받은 경우는 “공공저작물 자유이용허락표시기준(공공누리, KOGL)”을 부착하여 별도의 이용허락 없이 자유이용이 가능합니다.")
									.font(.footnote)
							} //: HSTACK
							Divider().padding(.vertical, 4)
							
							// App 아이콘
							HStack(alignment: .center, spacing: 10) {
								Image("icon")
									.resizable()
									.scaledToFit()
									.frame(height: 60)
								Spacer()
								
								Link(destination: URL(string: "https://www.freepik.com/vectors/animal-face")!) {
									Text("Animal face vector created by grmarc - www.freepik.com")
										.font(.footnote)
									Image(systemName:"arrow.up.right.square").foregroundColor(.accentColor).font(.footnote)
								}
							} //: HSTACK
														
							Divider().padding(.vertical, 4)
						
							// intro 아이콘
							HStack(alignment: .center, spacing: 10) {
								Image("intro")
									.resizable()
									.scaledToFit()
									.frame(height: 50)
								Spacer()
								
								Link(destination: URL(string: "https://icons8.com/illustrations/author/5c07e68d82bcbc0092519bb")!) {
									Text("Illustration by Icons 8 from Ounch!")
										.font(.footnote)
									Image(systemName:"arrow.up.right.square").foregroundColor(.accentColor).font(.footnote)
								}
							} //: HSTACK
							
						}  //: GROUP
					} //: VSTACK
				} //: SCROLL
			} //: ZSTACK
			.navigationTitle("앱 정보")
			.navigationBarTitleDisplayMode(.large)
			.navigationViewStyle(.stack)
			.navigationBarItems(
				trailing:
					Button(action: {
						presentationMode.wrappedValue.dismiss()
					}, label: {
						Image(systemName: "xmark")
							.font(.title)
							.foregroundColor(.accentColor)
					})
			)
		} // NavigationLink
	}
}

// MARK: -  PREVIEW
struct AppInfoView_Previews: PreviewProvider {
	static var previews: some View {
		AppInfoView()
	}
}
