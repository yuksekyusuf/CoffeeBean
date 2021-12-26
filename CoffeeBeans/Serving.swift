//
//  Serving.swift
//  CoffeeBeans
//
//  Created by Ahmet Yusuf Yuksek on 12/25/21.
//

import Foundation

struct Serving: Identifiable, Codable {
    
    var id: UUID
    let name: String
    let description: String
    let caffeine: Int
    let calories: Int
    
}
