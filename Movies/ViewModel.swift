//
//  ViewModel.swift
//  Movies
//
//  Created by alex on 03.03.22.
//

import Foundation
import SwiftUI

class ViewModel: ObservableObject {
    @Published var movies: [Movie] = []
    
    func fetch() {
        guard let apiKey = ProcessInfo.processInfo.environment["api_key"] else {
            print("Generate an API key at 'https://www.omdbapi.com/' and store it as a environment variable named 'api_key'")
            return
        }
        
        for imdbId in Movie.imdbmovieIds {
            guard let url = URL(string: "https://www.omdbapi.com/?i=\(imdbId)&apikey=\(apiKey)") else {
                return
            }
            
            let task = URLSession.shared.dataTask(with: url) { [weak self] data, _, error in
                guard let data = data, error == nil else {
                    return
                }
                
                do {
                    let movie = try JSONDecoder().decode(Movie.self, from: data)
                    DispatchQueue.main.async {
                        self?.movies.append(movie)
                    }
                }
                catch {
                    print(error)
                }
            }
           
            task.resume()
        }
    }
}
