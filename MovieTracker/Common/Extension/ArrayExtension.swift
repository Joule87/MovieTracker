//
//  ArrayExtension.swift
//  MovieTracker
//
//  Created by jucollado on 5/23/20.
//  Copyright © 2020 julio. All rights reserved.
//

import Foundation

extension Array {
    func chunked(into size: Int) -> [[Element]] {
        return stride(from: 0, to: count, by: size).map{
            Array(self[$0..<Swift.min($0 + size, count)])
        }
    }
}
