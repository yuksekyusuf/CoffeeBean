//
//  History.swift
//  CoffeeBeans
//
//  Created by Ahmet Yusuf Yuksek on 12/25/21.
//

import Foundation

class History: ObservableObject {
    
    @Published var servings: [Serving]
    let savePath = FileManager.documentsDirectory.appendingPathComponent("SaveDrinks")
    
    init() {
        do {
            let data = try Data(contentsOf: savePath)
            servings = try JSONDecoder().decode([Serving].self, from: data)
        } catch {
            servings = []
        }
    }
    
    func save() {
        do {
            let data = try JSONEncoder().encode(servings)
            try data.write(to: savePath, options: [.atomic, .completeFileProtection])
        } catch {
            print("Unable to save data")
        }
    }
    
    func add(_ drink: Drink, size: String, extraShots: Int, isDecaf: Bool,
             milk: ConfigurationOption, syrup: ConfigurationOption,
             caffine: Int, calories: Int) {
        var description = [String]()
        description.append(size)
        
        if isDecaf {
            description.append("decaffeinated")
        }
        
        switch extraShots {
        case 0:
            break
        case 1:
            description.append("1 extra shot")
        default:
            description.append("\(extraShots) extra shots")
        }
        
        if milk != .none {
            description.append("\(milk.name.lowercased()) milk")
        }
        
        if syrup != .none {
            description.append("\(syrup.name.lowercased()) milk")
        }
        
        let descriptionString = description.joined(separator: ", ")
        
        let serving = Serving(id: UUID(), name: drink.name, description: descriptionString, caffeine: caffine, calories: calories)
        
        servings.insert(serving, at: 0)
        save()
    }
}
