//
//  Movie.swift
//  ios-app-movies
//
//  Created by Diego De Oliveira on 11/04/24.
//

import Foundation

class Movie : Identifiable {
    var id = UUID()
    var title: String
    var coverImage: String
    var releaseYear: Int
    var genre: String
    var voteAverage: Double
    var director: String
    var country: String
    var synopsis: String
    

    init(id: UUID,title: String, coverImage: String,releaseYear: Int, genre: String,  voteAverage: Double,director: String,country: String,synopsis: String) {
        self.id = id
        self.title = title
        self.coverImage = coverImage
        self.releaseYear = releaseYear
        self.genre = genre
        self.voteAverage = voteAverage
        self.director = director
        self.country = country
        self.synopsis = synopsis
    }
}

let movies = [
    Movie(
        id: UUID(),
        title: "Gladiador",
        coverImage: "https://upload.wikimedia.org/wikipedia/pt/4/44/GladiadorPoster.jpg",
        releaseYear: 2014,
        genre: "Drama",
        voteAverage: 10,
        director: "Ridley Scott",
        country: "Estados Unidos",
        synopsis: "Maximus é um poderoso general romano, amado pelo povo e pelo imperador Marcus Aurelius. Antes de sua morte, o Imperador desperta a ira de seu filho Commodus ao tornar pública a sua predileção em deixar o trono para Maximus. Sedento pelo poder, Commodus mata seu pai, assume a coroa e ordena a morte de Maximus, que consegue fugir antes de ser pego, e passa a se esconder como um escravo e gladiador enquanto vai atrás de vingança."
        ),
    Movie(
        id: UUID(),
        title: "(500) Dias com Ela",
        coverImage: "https://media.fstatic.com/PyqUkh_2cnOq4DV-QLnOnaxDXt0=/322x478/smart/filters:format(webp)/media/movies/covers/2011/06/79a318ad4357944e02cf298b028488d4.jpg",
        releaseYear: 2009,
        genre: "Romance",
        voteAverage: 10,
        director: "Mark Webb",
        country: "Estados Unidos",
        synopsis: "Um romântico escritor se surpreende quando sua namorada Summer termina o namoro repentinamente. Com isso, ele relembra vários momentos dos 500 dias que passaram juntos para tentar descobrir onde seu caso de amor se perdeu e vai redescobrindo suas verdadeiras paixões."
        ),
    Movie(
        id: UUID(),
        title: "Questão de tempo",
        coverImage: "https://br.web.img3.acsta.net/pictures/210/530/21053062_20131025204305591.jpg",
        releaseYear: 2013,
        genre: "Romance",
        voteAverage: 10,
        director: "Richard Curti",
        country: "Reino Unido",
        synopsis: "Depois de descobrir que ele pode viajar no tempo, o jovem Tim Lake usa sua habilidade para ganhar o coração da mulher dos seus sonhos e salvar seu amigo de um desastre profissional."
        ),
    Movie(
        id: UUID(),
        title: "Nada de Novo no Front",
        coverImage: "https://br.web.img3.acsta.net/pictures/22/10/20/16/25/1413867.jpg",
        releaseYear: 2022,
        genre: "Guerra",
        voteAverage: 10,
        director: "Edward Berger",
        country: "Alemanha",
        synopsis: "O adolescente Paul é convocado para atuar na linha de frente da Primeira Guerra Mundial. O jovem começa seu serviço militar de forma idealista e entusiasmada, mas logo é confrontado pela dura realidade do combate."
        )
]
