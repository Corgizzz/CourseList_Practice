//
//  ContentView.swift
//  CourseList
//
//  Created by 00591908 on 2023/12/20.
//

import SwiftUI


//https://zappycode.com/api/courses?format=json

struct CourseListView: View {
    
    @State var courses: [Course] = []
    
    var body: some View {
        
        if courses.count == 0 {
            VStack {
                ProgressView()
                Text("Loading Course, Please Wait ... ")
                    .foregroundStyle(.red)
            }
            .onAppear {
                getCourse()
            }
        } else {
            ScrollView {
                ForEach(courses) { course in
                    Text(course.title)
                    CourseTileView(course: course)
                }
            }
        }
        
    }
}

extension CourseListView {
    private func getCourse() {
        guard let url = URL(string: "https://zappycode.com/api/courses?format=json") else { return }
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let data = data {
                let jsonDecoder = JSONDecoder()
                if let json = try? jsonDecoder.decode([Course].self, from: data) {
                    self.courses = json
                }
            }
        }.resume()
        
    }
}

#Preview {
    CourseListView()
}
