//
//  ReviewAPI.swift
//  MovieTracker
//
//  Created by jucollado on 5/23/20.
//  Copyright © 2020 julio. All rights reserved.
//

import Foundation

class ReviewAPI {
    func getAll(movieId: Int, completion: @escaping (([Review]?) -> Void)) {
        guard let url = URL(string: "https://movietrackers.herokuapp.com/api/reviews/movieId/\(movieId)") else {
            fatalError("Invalid URL")
        }
        SessionManager.request(url, completion)
    }
}
