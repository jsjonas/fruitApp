//
//  ContentView.swift
//  Fruits
//
//  Created by Jonas S on 15/01/2022.
//

import SwiftUI

struct ContentView: View {
    var fruitViewModel = FruitViewModel()
    
    
    var body: some View {
        FruitsView(viewModel: fruitViewModel)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
