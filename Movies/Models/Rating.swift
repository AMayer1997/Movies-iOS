//
//  Rating.swift
//  Movies
//
//  Created by alex on 02.03.22.
//

import Foundation

struct Rating: Hashable, Codable {
    var source: String
    var value: String
    
    enum CodingKeys: String, CodingKey {
        case source = "Source"
        case value = "Value"
    }
}
