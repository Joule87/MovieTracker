//
//  MovieCell.swift
//  MovieTracker
//
//  Created by jucollado on 5/23/20.
//  Copyright © 2020 julio. All rights reserved.
//

import SwiftUI

struct MovieCell: View {
    let movieViewModel: MovieViewModel
    
    var body: some View {
        HStack {
            Image(uiImage: movieViewModel.poster)
                .resizable()
                .frame(width: 70, height: 70).cornerRadius(20)
                .padding(.leading, 10)
            Text(movieViewModel.title).font(.title)
            Spacer()
        }
    }
}

struct MovieCell_Previews: PreviewProvider {
    static var previews: some View {
        let movieViewModel = MovieViewModel(movie: Movie(id: 0, title: "somse awesome", description: ";ladsad sa da sda,sd a;ls d", isWatched: true))
        return MovieCell(movieViewModel: movieViewModel)
    }
}
