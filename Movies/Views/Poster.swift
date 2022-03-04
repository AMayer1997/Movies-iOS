//
//  Poster.swift
//  Movies
//
//  Created by alex on 03.03.22.
//

import SwiftUI

struct Poster: View {
    @State var data: Data?
    let urlString: String
    let maxWidth: CGFloat
    let maxHeight: CGFloat
    
    var body: some View {
        if let data = data, let uiImage = UIImage(data: data) {
            Image(uiImage: uiImage)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(maxWidth: maxWidth, maxHeight: maxHeight)
        }
        else {
            Image(systemName: "photo")
                .frame(maxWidth: maxWidth, minHeight: maxHeight)
                .border(.primary, width: 1)
                .onAppear {
                    fetchData()
                }
        }
    }
    
    private func fetchData() {
        guard let url = URL(string: urlString) else {
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { data, _, _ in
            self.data = data
        }
        
        task.resume()
    }
}

struct Poster_Previews: PreviewProvider {
    static var previews: some View {
        Poster(urlString: Movie.sampleData[0].poster, maxWidth: 100, maxHeight: 150)
    }
}
