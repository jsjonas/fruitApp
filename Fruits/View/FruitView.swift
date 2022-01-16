//
//  FruitView.swift
//  Fruits
//
//  Created by Jonas S on 15/01/2022.
//

import SwiftUI

struct FruitView: View {
    
    var fruit: FruitModel
    
    var body: some View {
        VStack(alignment: .center) {
            HStack(alignment: .center, spacing: 0) {

                Image(uiImage: UIImage(data: fruit.data)!)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 80)
                
                HStack {
                    Spacer()
                    Text(fruit.name)
                        .font(.system(size: 18, weight: .bold))
                        .foregroundColor(Color.white)
                        .frame(width: 150, height: 80, alignment: .center)
                    Spacer()
                }                    .background(.black)


            }.cornerRadius(7)

        }
//        .frame(alignment: .center)

        
    }
}

struct FruitView_Previews: PreviewProvider {
    static var previews: some View {
        FruitView(fruit: FruitModel(name: "Apple", image: "https://upload.wikimedia.org/wikipedia/commons/thumb/c/cb/Pineapple_and_cross_section.jpg/286px-Pineapple_and_cross_section.jpg", description: "A Apple fruit", price: 35))
    }
}

