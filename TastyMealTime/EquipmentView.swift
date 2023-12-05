//
//  EquipmentView.swift
//
//
//  Created by Kloee Pratt-Castaneda 11/02/2023
//

import SwiftUI

struct MenuView: View {
    
    @State private var muscleItems = [MuscleItem] ()
    var dataService = DataService()
    
var body: some View {
        
    List(muscleItems) {item in
        
        MenuListRow(item: item)
    }
    .scaledToFit()
    .clipped()
        .listStyle(.plain)
        .onAppear {
            muscleItems = dataService.getMuscleData()
        }
    }
}

#Preview {
    MenuView()
}
