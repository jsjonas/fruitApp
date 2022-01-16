//
//  FruitDetail.swift
//  Fruits
//
//  Created by Jonas S on 15/01/2022.
//

import SwiftUI

struct FruitDetail: View {
    let fruit: FruitModel
    
    var body: some View {
        VStack {
                Image(uiImage: UIImage(data: fruit.data)!)
                    .resizable()
                .aspectRatio(contentMode: .fit)

            VStack {
                Text(fruit.name)
                
                Text(fruit.description)
                
                Text("\(fruit.price)")
            }.background(.blue)
        }
    }
}

struct FruitDetail_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetail(fruit: FruitModel(name: "Apple", image: "https://upload.wikimedia.org/wikipedia/commons/thumb/1/15/Red_Apple.jpg/265px-Red_Apple.jpg", description: "A Apple fruit", price: 35))
    }
}
