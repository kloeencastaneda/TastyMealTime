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
                
                Image(.muslceHouseLogo)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipShape(RoundedRectangle(cornerRadius: 16))
                    .padding(.vertical)
                
                Text("We're here, and we're only going to get bigger and better.")
                    .multilineTextAlignment(.center)
                    .bold()
            }
            Spacer()
            Text("Elite members get 24/7 access!")
                .multilineTextAlignment(.center)
                .bold()
            
            Spacer()
            
            Text("Sign up online:")
                .multilineTextAlignment(.center)
                .bold()
            Image(.qrCode)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(RoundedRectangle(cornerRadius: 16))
                .padding(.vertical)
        }
        .padding(.horizontal)
    }
}

#Preview {
    AboutView()
}
