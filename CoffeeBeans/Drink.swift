//
//  Drink.swift
//  CoffeeBeans
//
//  Created by Ahmet Yusuf Yuksek on 12/23/21.
//

import Foundation


struct Drink: Identifiable, Codable {
    
    let id: UUID
    let name: String
    
    static let example = Drink(id: UUID(), name: "Example Drink")
    
    
}
