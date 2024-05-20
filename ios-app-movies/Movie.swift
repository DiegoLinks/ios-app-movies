//
//  Movie.swift
//  ios-app-movies
//
//  Created by Diego De Oliveira on 11/04/24.
//

import Foundation

class Movie : Identifiable, Codable {
    var id = UUID()
    var title: String
    var coverImage: String
    var releaseYear: Int
    var genre: String
    var voteAverage: Double
    var director: String
    var country: String
    var synopsis: String
    
    enum CodingKeys: String, CodingKey {
         case id
         case title
         case coverImage
         case releaseYear
         case genre
         case voteAverage
         case director
         case country
         case synopsis
     }
}
