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
    let caffeine: [Int]
    let coffeBased: Bool
    let servedWithMilk: Bool
    let baseCalories: Int
    
    
    
    var image: String {
        name.lowercased().replacingOccurrences(of: " ", with: "-")
    }
    
    
    static let example = Drink(id: UUID(), name: "Example Drink", caffeine: [60, 120, 200], coffeBased: true, servedWithMilk: true, baseCalories: 100)
    
    
}
