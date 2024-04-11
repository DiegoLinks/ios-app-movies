//
//  ContentView.swift
//  ios-app-movies
//
//  Created by Diego De Oliveira on 10/10/23.
//

import SwiftUI

struct ContentView: View {
    
    struct Movie: Identifiable {
        let id = UUID()
        let name: String
    }

    private let movies = [
        Movie(name: "Questão de tempo"),
        Movie(name: "Gênio Indomável"),
        Movie(name: "Cidade de Gelo"),
        Movie(name: "Gladiador"),
        Movie(name: "Uma Mente Brilhante")
    ]
    
    var body: some View {
        NavigationView{
            List {
                ForEach(movies) {movie in
                    Text(movie.name)
                }
            }.navigationTitle("iMovies")
        }
    }
}

#Preview {
    ContentView()
}
