//
//  DetailsView.swift
//  TestPhoton
//
//  Created by José González on 2/14/24.
//

import SwiftUI

struct DetailsView: View {
    var school: SchoolItem

    var body: some View {
        VStack {
            Section{
                Text(school.overviewParagraph)
                    .padding(.vertical, 20)
                
            } header: {
                Text(school.schoolName)
                    .padding(.vertical, 20)

            } footer: {
                Text(school.location)
                    .padding(.vertical, 20)
            }
            Spacer()
        }
        .padding()
    }
}

#Preview {
    DetailsView(school: .mock)
}
