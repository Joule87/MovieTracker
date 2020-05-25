//
//  MovieDetail1.swift
//  MovieTracker
//
//  Created by Julio Collado on 5/13/20.
//  Copyright © 2020 julio. All rights reserved.
//

import SwiftUI

struct MovieDetail1: View {
    @State var movie: Movie
    @Environment(\.presentationMode) var presentationMode
    
    let isNewMovie: Bool
    
    var body: some View {
        List {
            Section {
                SectionTitle(title: "Movie")
                TextField("Title", text: $movie.title)
                TextView(placeholderText: "Description", text: $movie.title).frame(numLines: 4)
            }
            
//            Section {
//                SectionTitle(title: "Review")
//                HStack {
//                    Spacer()
//                    Text(String(repeating: "⭐️", count: Int(movie.rating))).accessibility(label: Text("\(Int(movie.rating)) star rating"))
//                    Spacer()
//                }
//                Slider(value: $movie.rating, in: 1...5, step: 1).accessibility(label: Text("\(Int(movie.rating))"))
//            }
            
            Section {
                SectionTitle(title: "Seen")
                
                Toggle(isOn: $movie.isWatched) {
                    if movie.title.isEmpty { Text("I have seen this movie") } else { Text("I have seen \(movie.title)") }
                }
            }
            
//            Section {
//                Button(action: {
//                    if self.isNewMovie {
//                        self.movies.append(self.movie)
//                    } else if let movieIndex = self.movies.firstIndex(where: {$0.id == self.movie.id}) {
//                        self.movieStorage.movies[movieIndex] = self.movie
//                    }
//                    self.presentationMode.wrappedValue.dismiss()
//                }) {
//                    HStack {
//                        Spacer()
//                        Text("Save")
//                        Spacer()
//                    }
//                }.disabled(movie.title.isEmpty)
//            }
        }.listStyle(GroupedListStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetail(movieViewModel: MovieViewModel(movie: Movie(id: 0, title: "", description: "", isWatched: false)))
    }
}
