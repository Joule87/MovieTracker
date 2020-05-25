//
//  ReviewGrid.swift
//  MovieTracker
//
//  Created by jucollado on 5/23/20.
//  Copyright © 2020 julio. All rights reserved.
//

import SwiftUI

struct ReviewGrid: View {
    @ObservedObject private var reviewListViewModel: ReviewListViewModel
    
    init(movieId: Int) {
        reviewListViewModel = ReviewListViewModel(movieId: movieId)
    }
    
    var body: some View {
        let chunkedReviews = reviewListViewModel.reviews.chunked(into: 2)
        return VStack {
            SectionTitle(title: "Reviews").padding(.bottom, -20)
            ScrollView (.horizontal) {
                HStack {
                    ForEach(0..<chunkedReviews.count, id: \.self) { index in
                        VStack {
                            ForEach(chunkedReviews[index], id: \.id) { review in
                                VStack {
                                    ReviewRow(review: review)
                                }.lineSpacing(10)
                            }
                        }
                    }
                }
                .lineSpacing(20)
                .frame(height: 200, alignment: .center)
            }
        }
    }
}

struct ReviewGrid_Previews: PreviewProvider {
    static var previews: some View {
        ReviewGrid(movieId: 2)
    }
}
