//
//  FruitsView.swift
//  Fruits
//
//  Created by Jonas S on 15/01/2022.
//

import SwiftUI

struct FruitsView: View {
    @ObservedObject var viewModel: FruitViewModel 
    
    var body: some View {
        NavigationView {
            
            List(viewModel.fruits, id: \.self) { fruit in
                
                NavigationLink(destination: FruitDetail(fruit: fruit)){
                    FruitView(fruit: fruit)
                }.frame(alignment: .center)
            }
            .onAppear {
                self.viewModel.getFruits()
            }
            .navigationBarTitle("Fruits")
        }
        
        .navigationViewStyle(StackNavigationViewStyle())
        
    }
}

struct FruitsView_Previews: PreviewProvider {
    static var previews: some View {
        FruitsView(viewModel: FruitViewModel())
    }
}
