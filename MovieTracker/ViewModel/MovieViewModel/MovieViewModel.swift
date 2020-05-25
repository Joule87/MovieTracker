//
//  MovieViewModel.swift
//  MovieTracker
//
//  Created by jucollado on 5/23/20.
//  Copyright © 2020 julio. All rights reserved.
//

import UIKit

struct MovieViewModel {
    private var movie: Movie
    
    var id: Int {
        return movie.id
    }
    
    var title: String {
        return self.movie.title
    }
    
    var poster: UIImage {
        //guard let url = URL(string: movie.posterURL) else { return nil }
        return UIImage(named: "desk")!
    }
    
    var isWatched: Bool {
        return self.movie.isWatched
    }
    
    init(movie: Movie) {
        self.movie = movie
    }
}
