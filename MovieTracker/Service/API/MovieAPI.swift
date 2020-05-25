//
//  MovieAPI.swift
//  MovieTracker
//
//  Created by Julio Collado on 5/22/20.
//  Copyright © 2020 julio. All rights reserved.
//

import Foundation

class MovieAPI {
    func getAll(completion: @escaping (([Movie]?) -> Void)) {
        guard let url = URL(string: "https://movietrackers.herokuapp.com/api/movies") else {
            fatalError("Invalid URL")
        }
        SessionManager.request(url, completion)
    }
}
