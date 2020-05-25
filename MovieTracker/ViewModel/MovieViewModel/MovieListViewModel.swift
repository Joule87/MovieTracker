//
//  MovieListViewModel.swift
//  MovieTracker
//
//  Created by jucollado on 5/23/20.
//  Copyright © 2020 julio. All rights reserved.
//

import Foundation

class MovieListViewModel: ObservableObject {
   @Published var movies = [MovieViewModel]()
    
    init() {
        MovieAPI().getAll{ movies in
            if let movieList = movies {
                self.movies = movieList.map(MovieViewModel.init)
            }
        }
    }
}


