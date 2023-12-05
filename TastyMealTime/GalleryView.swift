//
//  GalleryView.swift
//  TastyMealTime
//
//  Created by Mark Nair on 11/27/23.
//

import SwiftUI

struct GalleryView: View {
    @State private var photoData = [String]()
    @State private var sheetVisible = false
    @State private var selectedPhoto = ""
    var dataService = DataService()
    
    
    var body: some View {
        VStack {
            Text("Gallery")
                .font(.largeTitle)
                .bold()
            
            GeometryReader { proxy in
                ScrollView(showsIndicators: false) {
                    LazyVGrid(columns: [GridItem(spacing: 20), GridItem(spacing: 20), GridItem(spacing: 20)]) {
                        ForEach(photoData, id: \.self) { photo in
                            Image(photo)
                               .resizable()
                               .aspectRatio(contentMode: .fit)
                               .clipped()
                                .onTapGesture {
                                    sheetVisible = true
                                    selectedPhoto = photo
                                }
                            
                        }
                        
                        
                    }
                }
                }
            }
        .padding()
        .onAppear {
            photoData = dataService.getPhotos()
        }
        .sheet(isPresented: $sheetVisible) {
            PhotoView(selectedPhoto: $selectedPhoto, isSheetVisible: $sheetVisible)
        }
    }
}

#Preview {
    GalleryView()
}
