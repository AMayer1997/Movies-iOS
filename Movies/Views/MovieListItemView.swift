//
//  CardView.swift
//  Movies
//
//  Created by alex on 03.03.22.
//

import SwiftUI

struct MovieListItemView: View {
    let movie: Movie
    var body: some View {
        HStack(alignment: .top) {
            Poster(urlString: movie.poster, maxWidth: 100, maxHeight: 150)
            VStack(alignment: .leading) {
                Text(movie.title)
                    .font(.headline)
                    .padding(.leading, 1)
                    .padding(.top, 8)
                Text(movie.year)
                    .font(.subheadline)
                Spacer()
                Text("⭐ \(movie.imdbRating)")
                    .padding(.bottom)
            }
        }
    }
}


struct MovieListItemView_Previews: PreviewProvider {
    static var movie = Movie.sampleData[0]
    static var previews: some View {
        MovieListItemView(movie: movie)
    }
}
