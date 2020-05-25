//
//  ReviewRow.swift
//  MovieTracker
//
//  Created by jucollado on 5/24/20.
//  Copyright © 2020 julio. All rights reserved.
//

import SwiftUI

struct ReviewRow: View {
    let review: ReviewViewModel
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Text(String(repeating: "⭐️", count: Int(review.rating)))
                    .accessibility(label: Text("\(Int(review.rating)) star rating"))
                    .font(.caption)
            }
            .padding([.top, .trailing], 10.0)
            Text("*\(review.body)*")
                .font(.body)
                .padding(.all, 10.0)
            Spacer()
        }.frame(width: 200, height: 100, alignment: .center)
    }
}

struct ReviewRow_Previews: PreviewProvider {
    static var previews: some View {
        ReviewRow(review: ReviewListViewModel.all()[2]).previewLayout(.fixed(width: 200, height: 100))
    }
}
