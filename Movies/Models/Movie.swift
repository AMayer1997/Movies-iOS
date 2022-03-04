//
//  Movie.swift
//  Movies
//
//  Created by alex on 02.03.22.
//

import Foundation

struct Movie: Hashable, Codable {
    var title: String
    var year: String
    var released: String
    var runtime: String
    var genre: String
    var director: String
    var writer: String
    var actors: String
    var plot: String
    var language: String
    var country: String
    var poster: String
    var ratings: [Rating]
    var imdbRating: String
    var imdbID: String
    
    enum CodingKeys: String, CodingKey {
        case title = "Title"
        case year = "Year"
        case released = "Released"
        case runtime = "Runtime"
        case genre = "Genre"
        case director = "Director"
        case writer = "Writer"
        case actors = "Actors"
        case plot = "Plot"
        case language = "Language"
        case country = "Country"
        case poster = "Poster"
        case ratings = "Ratings"
        case imdbRating = "imdbRating"
        case imdbID = "imdbID"
    }
    
    func split(array: String) -> [String] {
        return array.components(separatedBy: ", ")
    }
}

extension Movie {
    static let sampleData: [Movie] =
    [
        Movie(title: "The Shawshank Redemption", year: "1994", released: "14 Oct 1994", runtime: "142 min", genre: "Drama", director: "Frank Darabont", writer: "Stephen King, Frank Darabont", actors: "Tim Robbins, Morgan Freeman, Bob Gunton", plot: "Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency.", language: "English", country: "United States", poster: "https://m.media-amazon.com/images/M/MV5BMDFkYTc0MGEtZmNhMC00ZDIzLWFmNTEtODM1ZmRlYWMwMWFmXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_SX300.jpg", ratings: [Rating(source: "Internet Movie Database", value: "9.3/10"), Rating(source: "Rotten Tomatoes", value: "91%"), Rating(source: "Metacritic", value: "80/100")], imdbRating: "9.3", imdbID: "tt0111161")
    ]
}

// Hardcoded list of top 10 best rated imdb movies
extension Movie {
    static let imdbmovieIds: [String] = ["tt0111161", "tt0068646", "tt0468569", "tt0071562", "tt0050083", "tt0108052", "tt0167260", "tt0110912", "tt0120737", "tt0060196"]
}
