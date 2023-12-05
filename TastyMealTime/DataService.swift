//
//  DataService.swift
//  TastyMealTime
//
//  Created by Mark Nair on 11/27/23.
//

import Foundation

struct DataService {
    
    func getMuscleData() -> [MuscleItem] {
        
        return [MuscleItem(name: "Available to Elite Members:",  imageName: "muscle-house-1"),
                MuscleItem(name: "Red Light Therapy,",  imageName: "muscle-house-2"),
                MuscleItem(name: "Tanning Beds,", imageName: "muscle-house-3"),
                MuscleItem(name: "And Childcare!", imageName: "muscle-house-4"),]
    }
    
    func getPhotos() -> [String] {
        
        return ["gallery1", "gallery2", "gallery3", "gallery4"]
    }
}

