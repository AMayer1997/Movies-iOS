//
//  ContentView.swift
//  Movies
//
//  Created by alex on 02.03.22.
//

import SwiftUI

struct MoviesView: View {
    @StateObject var viewModel = ViewModel()
    
    var body: some View {
        List {
            ForEach(viewModel.movies, id: \.imdbID) { movie in
                NavigationLink(destination: MovieDetailsView(movie: movie)) {
                    MovieListItemView(movie: movie)
                }
            }
        }
        .onAppear {
            viewModel.fetch()
        }
    }
}


 struct MoviesView_Previews: PreviewProvider {
     static var previews: some View {
         MoviesView()
     }
 }

