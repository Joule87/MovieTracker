//
//  SectionTitle.swift
//  MovieTracker
//
//  Created by jucollado on 5/24/20.
//  Copyright © 2020 julio. All rights reserved.
//

import SwiftUI

struct SectionTitle: View {
    var title: String
    var body: some View {
        HStack {
            Text(title).font(.headline).foregroundColor(.gray).padding()
            Spacer()
        }
    }
}

struct SectionTitle_Previews: PreviewProvider {
    static var previews: some View {
        SectionTitle(title: "Review")
    }
}
