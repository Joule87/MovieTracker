//
//  ReviewListViewModel.swift
//  MovieTracker
//
//  Created by jucollado on 5/23/20.
//  Copyright © 2020 julio. All rights reserved.
//

import Foundation

class ReviewListViewModel: ObservableObject {
   @Published var reviews = [ReviewViewModel]()
    
    init(movieId: Int) {
        ReviewAPI().getAll(movieId: movieId) { reviews in
            if let reviewList = reviews {
                self.reviews = reviewList.map(ReviewViewModel.init)
            }
        }
    }
}

extension ReviewListViewModel {
    static func all() -> [ReviewViewModel] {
        let a = ReviewViewModel(review: Review(id: 1, rating: 1, body: "123", movieId: 2))
        let b = ReviewViewModel(review: Review(id: 2, rating: 1, body: "ijansdijnsad", movieId: 2))
        let c = ReviewViewModel(review: Review(id: 3, rating: 1, body: "3213213", movieId: 2))
        let d = ReviewViewModel(review: Review(id: 4, rating: 1, body: ")(*&^%", movieId: 2))
         let q = ReviewViewModel(review: Review(id: 5, rating: 1, body: ")(*&^%", movieId: 2))
         let w = ReviewViewModel(review: Review(id: 6, rating: 1, body: ")(*&^%", movieId: 2))
         let e = ReviewViewModel(review: Review(id: 7, rating: 1, body: ")(*&^%", movieId: 2))
         let r = ReviewViewModel(review: Review(id: 8, rating: 1, body: ")(*&^%", movieId: 2))
        return [a,b,c,d,q,w,e,r]
    }
}
