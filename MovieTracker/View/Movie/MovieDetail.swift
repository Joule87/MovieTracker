//
//  MovieDetail.swift
//  MovieTracker
//
//  Created by jucollado on 5/23/20.
//  Copyright © 2020 julio. All rights reserved.
//

import SwiftUI

struct MovieDetail: View {
    let movieViewModel: MovieViewModel
    
    @State private var zoomed: Bool = false
    
    var body: some View {
        return ScrollView {
            VStack {
                Image(uiImage: movieViewModel.poster)
                    .resizable()
                    .aspectRatio(contentMode: self.zoomed ? .fill : .fit)
                    .onTapGesture {
                        withAnimation(.easeInOut) {
                            self.zoomed.toggle()
                        }
                }
                Text(movieViewModel.title).font(.title)
                ReviewGrid(movieId: movieViewModel.id)
            }
        }
        .navigationBarTitle(Text(movieViewModel.title), displayMode: .inline)
    }
}

struct MovieDetail_Previews: PreviewProvider {
    static var previews: some View {
        let movieViewModel = MovieViewModel(movie: Movie(id: 0, title: "Super Desk", description: ";ladsad sa da sda,sd a;ls d", isWatched: true))
        return MovieDetail(movieViewModel: movieViewModel)
    }
}
