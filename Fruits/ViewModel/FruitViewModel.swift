//
//  FruitViewModel.swift
//  Fruits
//
//  Created by Jonas S on 15/01/2022.
//

import Combine
import SwiftUI

class FruitViewModel: ObservableObject {
    private let url = "https://dev-api.com/fruitsBT/getFruits"
    
    @Published var fruits: [FruitModel] = []
    
    func getFruits() {
            guard let url = URL(string: url) else { return }
            URLSession.shared.dataTask(with: url) { (data, _, error) in
                guard error == nil else {
                    return
                }
                let decodedFruits = try! JSONDecoder().decode(FetchedFruits.self, from: data!)
                print(decodedFruits)
                
                DispatchQueue.main.async {
                    self.fruits = decodedFruits.fruits
                }
            }
            .resume()
        }
    
}


//class ImageLoader: ObservableObject {
//    var didChange = PassthroughSubject<Data, Never>()
//    var data = Data() {
//        didSet {
//            didChange.send(data)
//        }
//    }
//
//    init(urlString:String) {
//        guard let url = URL(string: urlString) else { return }
//        let task = URLSession.shared.dataTask(with: url) { data, response, error in
//            guard let data = data else { return }
//            DispatchQueue.main.async {
//                self.data = data
//            }
//        }
//        task.resume()
//    }
//}
