//
//  MovieList.swift
//  MovieTracker
//
//  Created by Julio Collado on 5/14/20.
//  Copyright © 2020 julio. All rights reserved.
//

import SwiftUI

struct MovieList: View {
    @State var movies: [Movie] = []
    
    var body: some View {
        NavigationView {
            List {
                ForEach(movies,id: \.self.id){ movie in
                    NavigationLink(destination: MovieDetail(movie: movie, isNewMovie: false)) {
                        Text(movie.title)
                    }
                }.onDelete{ offsets in
                    self.movies.remove(atOffsets: offsets)

                }
            }.navigationBarTitle("Movies").navigationBarItems(trailing:
                NavigationLink(destination: MovieDetail(movie: Movie(title: "", description: "", isWatched: false), isNewMovie: true), label: {
                    Image(systemName: "plus").font(.largeTitle).foregroundColor(.black)
                }).onAppear() {
                    MovieAPI().getAll { movies in
                        self.movies = movies
                    }
                }
            )
        }
    }
}

struct MovieList_Previews: PreviewProvider {
    static var previews: some View {
        MovieList()
    }
}
