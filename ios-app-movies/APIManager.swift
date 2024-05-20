//
//  APIManager.swift
//  ios-app-movies
//
//  Created by Diego De Oliveira on 13/05/24.
//

import Alamofire

class APIManager {
    static let shared = APIManager()
    
    let session: Session
    private let apiKey: String
    
    private init() {
        self.session = Session.default
        self.apiKey = loadAPIKey() ?? ""
    }
    
    func getPopularMovies(completion: @escaping (Result<[Movie], Error>) -> Void) {
        let url = "https://api.themoviedb.org/3/movie/popular?api_key=\(apiKey)"
        
        session.request(url).responseData { response in
            switch response.result {
            case .success(let data):
                do {
                    let decoder = JSONDecoder()
                    decoder.keyDecodingStrategy = .convertFromSnakeCase
                    let movieResponse = try decoder.decode(MovieResponse.self, from: data)
                    completion(.success(movieResponse.results))
                } catch {
                    completion(.failure(error))
                }
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
}

struct MovieResponse: Codable {
    let results: [Movie]
}
