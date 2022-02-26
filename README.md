# 🦊 멸종위기동물사전

<a href="https://apps.apple.com/us/app/%EB%A9%B8%EC%A2%85%EC%9C%84%EA%B8%B0%EB%8F%99%EB%AC%BC%EC%82%AC%EC%A0%84/id1611508119?itsct=apps_box_badge&amp;itscg=30200" style="display: inline-block; overflow: hidden; border-radius: 13px; width: 250px; height: 83px;"><img src="https://tools.applemediaservices.com/api/badges/download-on-the-app-store/black/en-us?size=250x83&amp;releaseDate=1645747200&h=d77fa095bb27cfb92a8d0e2038784719" alt="Download on the App Store" style="border-radius: 13px; width: 250px; height: 83px;"></a>

<img height="400" alt="스크린샷" src="https://github.com/jacobkosmart/endangered-animals-kr-app/blob/main/MD/endangerAnimalKR.gif">

## 📌 Main Features

- Show and describe Endangered animals in Korea

- Support multiplatform design in iPhone, iPad and Mac

- Advanced motion animation

- Only dark appearance

- Create map with annotations in SwiftUI

- Play video files in SwiftUI

## 👉 Pod library

> Google-Mobile-Ads-SDK - https://cocoapods.org/pods/Google-Mobile-Ads-SDK

#### 설치

`pod init`

```ruby
  pod 'Google-Mobile-Ads-SDK'
```

`pod install`

<!-- ## 📌 Project Setup -->

## 🔑 Check Point !

### 🔷 UI Structure

<!-- ! ppt UI structure -->

<img width="1463" alt="스크린샷 2022-02-26 오후 3 34 07" src="https://user-images.githubusercontent.com/28912774/155832628-2b66068e-cf67-4179-ba90-963eeb3b02b7.png">
<img width="1464" alt="스크린샷 2022-02-26 오후 3 34 15" src="https://user-images.githubusercontent.com/28912774/155832629-5f064ab5-8eef-422a-9015-c1410f5f402b.png">
<img width="1460" alt="스크린샷 2022-02-26 오후 3 34 22" src="https://user-images.githubusercontent.com/28912774/155832632-87579c28-9d2e-42b0-8b38-37d168dd973a.png">
<img width="642" alt="스크린샷 2022-02-26 오후 3 34 30" src="https://user-images.githubusercontent.com/28912774/155832633-776aa8a1-e620-43fe-b261-206eeb92474b.png">

### 🔷 Model

```swift
// AnimalModel.swift
struct Animal: Codable, Identifiable {
	let id: String
	let name: String
	let headline: String
	let description: String
	let link: String
	let image: String
	let gallery: [String]
	let fact: [String]
	let copyright: String
}

```

```swift
// CoverImageMode.swift
struct CoverImage: Codable, Identifiable {
	let id: Int
	let name: String
}

```

```swift
// VideoModel.swift
struct Video: Codable, Identifiable {
	let id: String
	let name: String
	let headline: String
	let videoid: String
}

```

```swift
// LocationModel.swift
import MapKit

struct AnimalLocation: Codable, Identifiable {
	var id: String
	var image: String
	var name: String
	var latitude: Double
	var longitude: Double

	// Computed Property
	var location: CLLocationCoordinate2D {
		CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
	}
}

```

### 🔷 Check core codes in details

#### 👉 [1.Initial Project Setup](https://github.com/jacobkosmart/endangered-animals-kr-app/blob/main/MD/1.Initail%20project%20setup.md)

#### 👉 [2.Decode a Json file and fetch data](https://github.com/jacobkosmart/endangered-animals-kr-app/blob/main/MD/2.Decode%20a%20Json%20file%20and%20fetch%20data.md)

#### 👉 [3.Create dynamic list using Swift Generics and Json data](https://github.com/jacobkosmart/endangered-animals-kr-app/blob/main/MD/3.Create%20dynamic%20list%20using%20Swift%20Generics%20and%20Json%20data.md)

#### 👉 [4.Develop the detail view for each animal with dynamic data](https://github.com/jacobkosmart/endangered-animals-kr-app/blob/main/MD/4.Develop%20the%20detail%20view%20for%20each%20animal%20with%20dynamic%20data.md)

#### 👉 [5.Create Video player](https://github.com/jacobkosmart/endangered-animals-kr-app/blob/main/MD/5.Create%20Video%20player.md)

#### 👉 [6.Develop complex map with custom annotations](https://github.com/jacobkosmart/endangered-animals-kr-app/blob/main/MD/6.Develop%20complex%20map%20with%20custom%20annotations.md)

#### 👉 [7.Create motion animation](https://github.com/jacobkosmart/endangered-animals-kr-app/blob/main/MD/7.Create%20motion%20animation.md)

#### 👉 [8.Create a photo gallery with grid layout](https://github.com/jacobkosmart/endangered-animals-kr-app/blob/main/MD/8.Create%20a%20photo%20gallery%20with%20grid%20layout.md)

#### 👉 [9.Develop a complex grid layout system with Toolbar buttons](https://github.com/jacobkosmart/endangered-animals-kr-app/blob/main/MD/9.Develop%20a%20complex%20grid%20layout%20system%20with%20Toolbar%20buttons.md)

<!-- #### 👉 -->

<!-- > Describing check point in details in Jacob's DevLog - https://jacobko.info/firebaseios/ios-firebase-03/ -->

<!-- ## ❌ Error Check Point

### 🔶 -->

<!-- xcode Mark template -->

<!--
// MARK: IBOutlet
// MARK: LifeCycle
// MARK: Actions
// MARK: Methods
// MARK: Extensions
-->

<!-- <img height="350" alt="스크린샷" src=""> -->

<!-- README 한 줄에 여러 screenshoot 놓기 예제 -->
<!-- <p>
    <img alt="Clear Spaces demo" src="../assets/demo-clear-spaces.gif" height=400px>
    <img alt="QR code scanner demo" src="../assets/demo-qr-code.gif" height=400px>
    <img alt="Example preview demo" src="../assets/demo-example.gif" height=400px>
</p> -->

---

<!-- 🔶 🔷 📌 🔑 👉 -->

## 🗃 Reference

Learn how to create a grid layout with SwiftUI 2 in credo - [https://credo.academy/swiftui-app-07.html](https://credo.academy/swiftui-app-07.html)

멸종위기 야생생물 포털 - [https://www.nie.re.kr/endangered_species/home/enspc/enspc02001i.do#spclist](https://www.nie.re.kr/endangered_species/home/enspc/enspc02001i.do#spclist)
