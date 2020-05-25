//
//  SessionManager.swift
//  MovieTracker
//
//  Created by jucollado on 5/23/20.
//  Copyright © 2020 julio. All rights reserved.
//

import Foundation

class SessionManager {
    
    static func request<T: Codable>(_ url: URL, _ completion: @escaping (([T]?) -> Void)) {
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data else {
                #if DEBUG
                print("Error: \(error.debugDescription)")
                #endif
                DispatchQueue.main.async {
                    completion(nil)
                }
                return
            }
            
            let movies = try? JSONDecoder().decode([T].self, from: data)
            DispatchQueue.main.async {
                completion(movies)
            }
        }.resume()
    }
    
}
