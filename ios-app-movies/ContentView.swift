//
//  ContentView.swift
//  ios-app-movies
//
//  Created by Diego De Oliveira on 10/10/23.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        List(movies) { movie in
            MovieCardView(movie: movie)
        }
    }
}

struct MovieCardView: View {
    let movie: Movie

    var body: some View {
        HStack {
//            AsyncImage(url: URL(string: movie.coverImage))
//                .frame(width: 100, height: 150)
            VStack(alignment: .leading) {
                Text(movie.title)
                    .font(.headline)
                Text(movie.genre)
                    .font(.subheadline)
                Text("Year: \(movie.releaseYear)")
                    .font(.subheadline)
                Text("Director: \(movie.director)")
                    .font(.subheadline)
            }
            Spacer()
        }
        .padding()
    }
}


#Preview {
   ContentView()
}
