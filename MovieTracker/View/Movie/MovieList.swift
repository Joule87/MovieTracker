//
//  MovieList.swift
//  MovieTracker
//
//  Created by Julio Collado on 5/14/20.
//  Copyright © 2020 julio. All rights reserved.
//

import SwiftUI

struct MovieList: View {
    @ObservedObject private var movieListViewModel = MovieListViewModel()
    @State private var isWatched  = false
    
    var body: some View {
        NavigationView {
            ZStack {
                List(self.movieListViewModel.movies.filter { $0.isWatched == self.isWatched}, id: \.id) { movie in
                    NavigationLink(destination: MovieDetail(movieViewModel: movie)) {
                        MovieCell(movieViewModel: movie)
                        
                    }
                    // }
                    //                .onDelete{ offsets in
                    //                    self.movies.remove(atOffsets: offsets)
                    //
                    //                }
                }
                .navigationBarTitle("Movies")
                .navigationBarItems(trailing:
                    Toggle(isOn: self.$isWatched) {
                        Text("Seen")
                    }
                )
                FloatingAddButton()
                    .padding(.leading, UIScreen.main.bounds.width - 170)
                    .padding(.top, UIScreen.main.bounds.height - 300)
                    
            }
        }
    }
}

struct MovieList_Previews: PreviewProvider {
    static var previews: some View {
        MovieList()
    }
}

struct FloatingAddButton: View {
    var body: some View {
        NavigationLink(destination: MovieDetail(movieViewModel: MovieViewModel(movie: Movie(id: 0, title: "", description: "", isWatched: false))), label: {
            Image(systemName: "plus")
                .frame(width: 100, height: 100, alignment: .center)
                .font(.largeTitle)
                .foregroundColor(Color.init(red: 0/255, green: 44/255, blue: 74/255))
                .background(Color.white)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.gray, lineWidth: 0.2))
                .shadow(radius: 5, x: -5.0, y: -5.0)
        })
    }
}
