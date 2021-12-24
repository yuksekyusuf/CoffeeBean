//
//  MenuSection.swift
//  CoffeeBeans
//
//  Created by Ahmet Yusuf Yuksek on 12/23/21.
//

import Foundation

struct MenuSection: Identifiable, Codable {
    
    let id: UUID
    let name: String
    let drinks: [Drink]
    
}
