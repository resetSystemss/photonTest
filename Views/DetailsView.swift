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
                HStack{
                    Text(school.overviewParagraph)
                        .padding()
                }
                .padding(.vertical, 20)
                .background(.thinMaterial)
                .cornerRadius(10)
            } header: {
                HStack{
                    Text(school.schoolName)
                        .font(.title3)
                        .padding(.vertical, 20)
                }
                .padding(.vertical, 20)
                .frame(maxWidth: .infinity)
                .background(.thinMaterial)
                .cornerRadius(10)
            } footer: {
                HStack {
                    Text(school.location)
                        .padding(.vertical, 20)
                }
                .padding(.vertical, 20)
                .frame(maxWidth: .infinity)
                .background(.thinMaterial)
                .cornerRadius(10)
            }
            Spacer()
        }
        .padding()
    }
}

#Preview {
    DetailsView(school: .mock)
}
