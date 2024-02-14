//
//  ContentView.swift
//  TestPhoton
//
//  Created by José González on 2/14/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel:SchoolsViewModel = SchoolsViewModel()
    
    var body: some View {
        NavigationStack {
            ZStack {
                HomeView(schools: viewModel.schools)
                    .task {
                        await viewModel.getSchools()
                    }
                    .navigationTitle("Schools")
                if viewModel.isLoading {
                    ProgressView()
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
