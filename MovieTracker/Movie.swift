//
//  Movie.swift
//  MovieTracker
//
//  Created by Julio Collado on 5/14/20.
//  Copyright © 2020 julio. All rights reserved.
//

import Foundation

struct Movie: Identifiable {
    var id = UUID()
    
    var title = ""
    var rating = 3.0
    var isWatched = false
    
}

class MovieStorage: ObservableObject {
    @Published var movies = [Movie]()
}
