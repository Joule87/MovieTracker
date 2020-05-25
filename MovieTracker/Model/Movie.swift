//
//  Movie.swift
//  MovieTracker
//
//  Created by Julio Collado on 5/14/20.
//  Copyright © 2020 julio. All rights reserved.
//

import Foundation

struct Movie: Codable, Identifiable {
    var id: Int
    var title: String
    //var posterURL: String
    var description: String
    var isWatched: Bool
    
//    init(title: String, description: String, isWatched: Bool) {
//        self.title = title
//        self.description = description
//        self.isWatched = isWatched
//    }
}


