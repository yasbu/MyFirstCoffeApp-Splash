//
//  Desert.swift
//  MyFirstCoffeApp
//
//  Created by Yasin Burak AYDIN on 4.09.2023.
//

import Foundation

struct Desert {
    let id, name, description, image: String?
    let calories: Int?
    
    var formattedCalories: String {
        return "\(calories ?? 0) calories"
    }
}
