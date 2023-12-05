//
//  MenuView.swift
//  TastyMealTime
//
//  Created by Mark Nair on 11/27/23.
//

import SwiftUI

struct MenuView: View {
    
    @State private var menuItems = [MuscleItem] ()
    var dataService = DataService()
    
var body: some View {
        
    List(menuItems) {item in
        
        MenuListRow(item: item)
    }

        .listStyle(.plain)
        .onAppear {
            menuItems = dataService.getMuscleData()
        }
    }
}

#Preview {
    EquipmentView()
}
