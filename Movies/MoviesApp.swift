//
//  MoviesApp.swift
//  Movies
//
//  Created by alex on 02.03.22.
//

import SwiftUI

@main
struct MoviesApp: App {
    @StateObject var viewModel = ViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                List {
                    ForEach(viewModel.movies, id: \.imdbID) { movie in
                        NavigationLink(destination: MovieDetailsView(movie: movie)) {
                            MovieListItemView(movie: movie)
                        }
                        .listRowInsets(.init(top: 0, leading: 0, bottom: 0, trailing: 16))
                    }
                }
                .navigationTitle("Movies")
            }
            .navigationViewStyle(.stack)
            .onAppear {
                viewModel.fetch()
            }
        }
    }
}
