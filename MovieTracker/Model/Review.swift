//
//  Review.swift
//  MovieTracker
//
//  Created by jucollado on 5/23/20.
//  Copyright © 2020 julio. All rights reserved.
//

import Foundation

struct Review: Codable, Identifiable {
    let id: Int
    let rating: Int
    let body: String
    let movieId: Int
}
