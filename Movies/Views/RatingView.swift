//
//  RatingView.swift
//  Movies
//
//  Created by alex on 03.03.22.
//

import SwiftUI

struct RatingView: View {
    let ratings: [Rating]
    
    var body: some View {
        ForEach(ratings.indices, id: \.self) { i in
            VStack {
                Text(ratings[i].value)
                    .font(.headline)
                    .bold()
                // Change "Internet Movie Database" to "IMDB" when it occurs
                Text(ratings[i].source == "Internet Movie Database" ? "IMDb" : ratings[i].source)
                    .font(.subheadline)
                    .multilineTextAlignment(.center)
            }
            if i != ratings.indices.count-1 {
               Spacer()
            }
        }
    }
}

struct RatingView_Previews: PreviewProvider {
    static var previews: some View {
        RatingView(ratings: Movie.sampleData[0].ratings)
    }
}
