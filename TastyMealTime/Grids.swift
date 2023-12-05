//
//  Grids.swift
//  TastyMealTime
//
//  Created by Mark Nair on 11/27/23.
//

import SwiftUI

struct Grids: View {
    var photos = ["gallery1", "gallery2","gallery3","gallery4"]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: [GridItem(spacing: 15), GridItem(spacing: 20), GridItem(spacing: 20)], spacing: 10) {
                ForEach (photos, id: \.self) {
                    picture in
                        Image(picture)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                }
            }
        }
    }
}

#Preview {
    Grids()
}
