//
//  MenuListRow.swift
//  TastyMealTime
//
//  Created by Kloee Pratt-Castaneda on 12/4/23.
//

import SwiftUI

struct MenuListRow: View {
    
    var item: MuscleItem
    
    var body: some View {
        
        HStack {
            Image(item.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 50)
                .cornerRadius(10)
            
            Text(item.name)
                .bold()
            
            Spacer()
            
        }
        .listRowSeparator(.hidden)
        .listRowBackground(
            Color(.brown)
                .opacity(0.1)
        )
    }
}


#Preview {
    MenuListRow(item: MuscleItem(name: "",  imageName: "muscle-house-1"))
}
