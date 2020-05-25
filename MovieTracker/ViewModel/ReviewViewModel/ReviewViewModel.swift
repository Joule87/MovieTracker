//
//  ReviewViewModel.swift
//  MovieTracker
//
//  Created by jucollado on 5/23/20.
//  Copyright © 2020 julio. All rights reserved.
//

import Foundation

struct ReviewViewModel: Identifiable {
    private var review: Review
    
    var id: Int {
        return review.id
    }
    
    var body: String {
        return review.body
    }
    
    var rating: Int {
        return review.rating
    }
    
    init(review: Review) {
        self.review = review
    }
}
