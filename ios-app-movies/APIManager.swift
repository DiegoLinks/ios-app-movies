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
    
    private init() {
        self.session = Session.default
    }
    
    func getPopularMovies(completion: @escaping (Result<Data, Error>) -> Void) {
        
        let url = "https://api.themoviedb.org/3/"
        
        session.request(url).responseData { response in
            switch response.result {
            case .success(let data):
                completion(.success(data))
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
}
