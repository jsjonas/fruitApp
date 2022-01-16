//
//  Fruit.swift
//  Fruits
//
//  Created by Jonas S on 15/01/2022.
//

import UIKit

struct FruitModel: Hashable, Decodable {
    var name: String
    var image: String
    var description: String
    var price: Double
    
}

extension FruitModel {
    var data: Data {
        let data = try? Data(contentsOf: URL(string: self.image)!)
        return data!
    }
}

struct FetchedFruits: Hashable, Decodable {
    var fruits: [FruitModel]
    
}
