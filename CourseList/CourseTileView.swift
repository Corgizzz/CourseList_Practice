//
//  CourseTileView.swift
//  CourseList
//
//  Created by 00591908 on 2023/12/20.
//

import SwiftUI

struct CourseTileView: View {
    
    let course: Course
    
    var body: some View {
        AsyncImage(url: URL(string: course.image)) { response in
            switch response {
            case .success(let image):
                image
                    .resizable()
                    .scaledToFit()
            default:
                DefaultImageView()
            }
        }
    }
}

#Preview {
    CourseTileView(course: Course(id: 1, release_date: "test", image: "!23", title: "123", subtitle: "tet"))
}
