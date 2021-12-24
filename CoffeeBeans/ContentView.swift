//
//  ContentView.swift
//  CoffeeBeans
//
//  Created by Ahmet Yusuf Yuksek on 12/23/21.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var menu = Menu()
    
    var body: some View {
        MenuView()
            .environmentObject(menu)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
