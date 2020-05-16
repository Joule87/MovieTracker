//
//  MovieList.swift
//  MovieTracker
//
//  Created by Julio Collado on 5/14/20.
//  Copyright © 2020 julio. All rights reserved.
//

import SwiftUI

struct MovieList: View {
    @EnvironmentObject var movieStorage: MovieStorage
    
    var body: some View {
        NavigationView {
            List {
                ForEach(movieStorage.movies,id: \.self.id){ movie in
                    NavigationLink(destination: MovieDetail(movie: movie, isNewMovie: false)) {
                        Text(movie.title)
                    }
                }.onDelete{ offsets in
                    self.movieStorage.movies.remove(atOffsets: offsets)

                }
            }.navigationBarTitle("Movies").navigationBarItems(trailing:
                NavigationLink(destination: MovieDetail(movie: Movie(), isNewMovie: true), label: {
                    Image(systemName: "plus").font(.largeTitle).foregroundColor(.black)
                })
            )
        }
    }
}

struct MovieList_Previews: PreviewProvider {
    static var previews: some View {
        MovieList()
    }
}
