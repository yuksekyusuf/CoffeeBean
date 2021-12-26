//
//  Menu.swift
//  CoffeeBeans
//
//  Created by Ahmet Yusuf Yuksek on 12/23/21.
//

import Foundation

class Menu: ObservableObject, Codable {
    
    let sections: [MenuSection]
    var milkOptions = [ConfigurationOption.none]
    var syrupOptions = [ConfigurationOption.none]
    
    init() {
        

        let url = Bundle.main.url(forResource: "menu", withExtension: "json")!
        let data = try! Data(contentsOf: url)
        let menuData = try! JSONDecoder().decode(Menu.self, from: data)
        sections = menuData.sections
        milkOptions = menuData.milkOptions
        syrupOptions = menuData.syrupOptions
            
    }
    
}
