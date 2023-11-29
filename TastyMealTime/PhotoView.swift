//
//  PhotoView.swift
//  TastyMealTime
//
//  Created by Mark Nair on 11/29/23.
//

import SwiftUI

struct PhotoView: View {
    @Binding var selectedPhoto: String
    @Binding var isSheetVisible: Bool
    
    var body: some View {
        ZStack {
            HStack{
                Spacer()
                VStack {
                    Button(action: {
                        isSheetVisible = false
                    }, label: {
                        Image(systemName: "x.circle")
                            .scaleEffect(2.0)
                            .foregroundColor(.black)
                            .opacity(0.8)
                    })
                    Spacer()
                }
            }
            .padding()
            
            Image(selectedPhoto)
                .resizable()
            .aspectRatio(contentMode: .fit)
        }
    }
}

#Preview {
    PhotoView(selectedPhoto: Binding.constant("gallery1"), isSheetVisible: Binding.constant(true))
}
