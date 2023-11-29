//
//  MenuItemModel.swift
//  TastyMealTime
//
//  Created by Mark Nair on 11/29/23.
//

import Foundation

struct MenuItem: Identifiable {
    var id = UUID()
    var name: String
    var price: String
    var imageName: String
}
