//
//  ContentView.swift
//  ios-app-movies
//
//  Created by Diego De Oliveira on 10/10/23.
//

import SwiftUI
import SDWebImageSwiftUI

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
        VStack(alignment: .leading) {

            WebImage(url: URL(string: movie.coverImage))
                  .resizable()
                  .indicator(.activity)
                  .transition(.fade(duration: 0.5))
                  .scaledToFit()
                  .frame(width: 300, height: 500)
            
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
        }
        //.padding()
        .background(Color.white)
        //.cornerRadius(10)
        //.shadow(radius: 5)
    }
}


#Preview {
   ContentView()
}
