//
//  MovieAPI.swift
//  MovieTracker
//
//  Created by Julio Collado on 5/22/20.
//  Copyright © 2020 julio. All rights reserved.
//

import Foundation

class MovieAPI {
    func getAll(completion: @escaping (([Movie]) -> Void)) {
        guard let url = URL(string: "https://movietrackers.herokuapp.com/api/movies") else {
            return
        }
        URLSession.shared.dataTask(with: url) { data, _, _ in
            let movies = try! JSONDecoder().decode([Movie].self, from: data!)
            DispatchQueue.main.async {
                completion(movies)
            }
        }.resume()
    }
}
