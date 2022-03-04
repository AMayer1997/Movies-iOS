//
//  DetailView.swift
//  Movies
//
//  Created by alex on 03.03.22.
//

import SwiftUI

struct MovieDetailsView: View {
    let movie: Movie
    
    var body: some View {
        List {
            Section {
                VStack(alignment: .leading) {
                    Text(movie.title)
                        .font(.largeTitle)
                        .bold()
                    HStack(alignment: .top) {
                        Poster(urlString: movie.poster, maxWidth: 150, maxHeight: 500)
                        Text(movie.plot)
                    }
                    GenreView(movie: movie)
                }
            }
            .listRowBackground(Color.clear)
            .listRowInsets(EdgeInsets())
            Section {
                HStack() {
                    RatingView(ratings: movie.ratings)
                }
            }
            Section(header: Text("Details")) {
                DetailsItemView(title: "Released", systemImage: "calendar", text: movie.released)
                DetailsItemView(title: "Length", systemImage: "timer", text: movie.runtime)
                DetailsItemView(title: "Language", systemImage: "text.bubble", text: movie.language)
                DetailsItemView(title: "Country", systemImage: "location", text: movie.country)
            }
            Section(header: Text("Director")) {
                ForEach(movie.split(array: movie.director), id: \.self) { director in
                    Label(director, systemImage: "person")
                }
            }
            Section(header: Text("Writer")) {
                ForEach(movie.split(array: movie.writer), id: \.self) { writer in
                    Label(writer, systemImage: "person")
                }
            }
            Section(header: Text("Actors")) {
                ForEach(movie.split(array: movie.actors), id: \.self) { mActor in
                    Label(mActor, systemImage: "person")
                }
            }
        }
    }
}


 struct MovieDetailsView_Previews: PreviewProvider {
     static var previews: some View {
         MovieDetailsView(movie: Movie.sampleData[0])
     }
 }
