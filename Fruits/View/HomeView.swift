//
//  FruitsView.swift
//  Fruits
//
//  Created by Jonas S on 15/01/2022.
//

import SwiftUI

struct HomeView: View {
    @StateObject var viewModel: FruitViewModel
    
    var body: some View {
        NavigationView {
            
            List(viewModel.fruits, id: \.self) { fruit in
                
                NavigationLink(destination: FruitDetailView(fruit: fruit)){
                    FruitView(fruit: fruit)
                }
            }.frame(alignment: .center)

            .navigationBarTitle("Fruits")
        }
        .navigationViewStyle(StackNavigationViewStyle())
        .onAppear {
            self.viewModel.getFruits()
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(viewModel: FruitViewModel())
    }
}
