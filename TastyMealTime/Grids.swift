//
//  Grids.swift
//  TastyMealTime
//
//  Created by Mark Nair on 11/27/23.
//

import SwiftUI

struct Grids: View {
    var photos = ["gallery1", "gallery2","gallery3","gallery4","gallery5","gallery6","gallery7","gallery8","gallery9", "gallery10", "gallery11"]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: [GridItem(spacing: 0), GridItem(spacing: 0), GridItem(spacing: 0)], spacing: 0) {
                ForEach (photos, id: \.self) {
                    picture in
                        Image(picture)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                }
            }
        }
    }
}

#Preview {
    Grids()
}
