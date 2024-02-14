//
//  HomeView.swift
//  TestPhoton
//
//  Created by José González on 2/14/24.
//

import SwiftUI

struct HomeView: View {
    var schools: [SchoolItem]
    var body: some View {
        List {
            ForEach(schools, id: \.dbn) { school in
                NavigationLink {
                    DetailsView(school: school)
                        .navigationTitle("DBN: " + school.dbn)
                } label: {
                    Text(school.schoolName)
                        .font(.callout)
                }
               
            }
        }
    }
}

#Preview {
    HomeView(schools: [.mock, .mock, .mock, .mock])
}
