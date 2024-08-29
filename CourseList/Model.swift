//
//  Model.swift
//  CourseList
//
//  Created by 00591908 on 2023/12/20.
//

import Foundation

//"id": 15,
//"release_date": "2023-09-19",
//"image": "https://zappycode.com/media/course_images/CourseImageTake2NoBorder_A1jzclC.png",
//"title": "iPhone Apps for Complete Beginners - Swift, SwiftUI & iOS17",
//"subtitle": "You'll go from a complete beginner to having your own app in the App Store. Brand new (filmed Fall 2023) using Xcode 15",
//"promo_download_url": null,
//"total_video_time": null

struct Course: Codable, Identifiable {
    var id: Int
    var release_date: String
    var image: String
    var title: String
    var subtitle: String
    var promo_download_url: String?
    var total_video_time: String?
}
