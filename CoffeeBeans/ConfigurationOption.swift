//
//  ConfigurationOption.swift
//  CoffeeBeans
//
//  Created by Ahmet Yusuf Yuksek on 12/24/21.
//

import Foundation


struct ConfigurationOption: Identifiable, Codable, Hashable {
    
    let id: UUID
    let name: String
    let calories: Int
    
    static let none = ConfigurationOption(id: UUID(), name: "None", calories: 0)
    
}
