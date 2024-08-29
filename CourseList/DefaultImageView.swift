//
//  DefaultImageView.swift
//  CourseList
//
//  Created by 00591908 on 2023/12/20.
//

import SwiftUI

struct DefaultImageView: View {
    var body: some View {
        VStack {
            ProgressView {
                Text("Loaging Image")
            }
            .padding()
            .background(.secondary.opacity(0.5))
            .frame(maxWidth: .infinity)
        }
    }
}

#Preview {
    DefaultImageView()
}
