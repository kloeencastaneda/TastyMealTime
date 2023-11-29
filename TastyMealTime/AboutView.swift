//
//  AboutView.swift
//  TastyMealTime
//
//  Created by Mark Nair on 11/27/23.
//

import SwiftUI

struct AboutView: View {
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(alignment: .leading) {
                Text("About")
                    .font(.largeTitle)
                    .bold()
                
                Image(.bangkokTokyo)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(.bottom)
                
                Text("Welcome to Bangkok Tokyo Restaurant where Thai and Japanese cruisines come together.")
                
                Image(.bangkokTokyoLocation)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                Text("""
                    2413 South Western Street
                    Amarillo, Texas
                    79109
                    806-353-4777
                    """)
            }
        }
        .padding(.horizontal)
    }
}

#Preview {
    AboutView()
}
