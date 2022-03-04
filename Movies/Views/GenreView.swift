//
//  GenreView.swift
//  Movies
//
//  Created by alex on 03.03.22.
//

import SwiftUI

struct GenreView: View {
    let movie: Movie
    
    var body: some View {
        HStack {
            ForEach(movie.split(array: movie.genre), id: \.self) { genre in
                Text(genre)
                    .padding(.horizontal, 8)
                    .padding(.vertical, 4)
                    .background(.secondary)
                    .clipShape(Capsule())
            }
        }
    }
}

struct GenreView_Previews: PreviewProvider {
    static var previews: some View {
        GenreView(movie: Movie.sampleData[0])
    }
}
