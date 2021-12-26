//
//  FileManager-DocumentsDirectory.swift
//  CoffeeBeans
//
//  Created by Ahmet Yusuf Yuksek on 12/25/21.
//

import Foundation


extension FileManager {
    static var documentsDirectory: URL {
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        return paths[0]
    }
    
}
