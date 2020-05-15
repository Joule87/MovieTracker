//
//  MovieDetail.swift
//  MovieTracker
//
//  Created by Julio Collado on 5/13/20.
//  Copyright © 2020 julio. All rights reserved.
//

import SwiftUI

struct MovieDetail: View {
    @State var movie: Movie
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var movieStorage: MovieStorage
    
    let isNewMovie: Bool
    
    var body: some View {
        List {
            Section {
                SectionTitle(title: "Title")
                TextField("Movie Title", text: $movie.title)
            }
            
            Section {
                SectionTitle(title: "Rating")
                HStack {
                    Spacer()
                    Text(String(repeating: "⭐️", count: Int(movie.rating))).accessibility(label: Text("\(Int(movie.rating)) star rating"))
                    Spacer()
                }
                Slider(value: $movie.rating, in: 1...5, step: 1).accessibility(label: Text("\(Int(movie.rating))"))
            }
            
            Section {
                SectionTitle(title: "Seen")
                
                Toggle(isOn: $movie.isWatched) {
                    if movie.title.isEmpty { Text("I have seen this movie") } else { Text("I have seen \(movie.title)") }
                }
            }
            
            Section {
                Button(action: {
                    if self.isNewMovie {
                        self.movieStorage.movies.append(self.movie)
                    } else if let movieIndex = self.movieStorage.movies.firstIndex(where: {$0.id == self.movie.id}) {
                        self.movieStorage.movies[movieIndex] = self.movie
                    }
                    self.presentationMode.wrappedValue.dismiss()
                }) {
                    HStack {
                        Spacer()
                        Text("Save")
                        Spacer()
                    }
                }.disabled(movie.title.isEmpty)
            }
        }.listStyle(GroupedListStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetail(movie: Movie(), isNewMovie: true)
    }
}

struct SectionTitle: View {
    var title: String
    var body: some View {
        Text(title).font(.caption).foregroundColor(.gray)
    }
}
