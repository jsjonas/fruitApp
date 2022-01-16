//
//  FruitDetail.swift
//  Fruits
//
//  Created by Jonas S on 15/01/2022.
//

import SwiftUI

struct FruitDetailView: View {
    let fruit: FruitModel
    
    var body: some View {
        
        GeometryReader { geo in
            VStack(spacing: 0) {
                VStack {
                    Image(uiImage: UIImage(data: fruit.data)!)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .clipShape(Circle())
    //                    .padding()
                        .frame(width: geo.size.width, height: geo.size.height/2, alignment: .center)
                    .background(.white)
                    .cornerRadius(60, corners: [.bottomRight])
                    .background(.green)

                }


                VStack {
                    Spacer()
                    
                    Text(fruit.name)
                        .font(.title2)
                        .bold()
                        .foregroundColor(.black)
                        .multilineTextAlignment(.center)
                    Spacer()
                    
                    Text(fruit.description)
                        .font(.title2)
                        .bold()
                        .foregroundColor(.black)
                        .multilineTextAlignment(.center)
                    Spacer()
                    
                    Text("\(fruit.price, specifier: "%.2f")")
                        .font(.title2)
                        .bold()
                        .foregroundColor(.black)
                        .multilineTextAlignment(.center)
                    Spacer()

                }
                    .frame(width: geo.size.width, height: geo.size.height/2, alignment: .center)
                
                    .background(.green)
                    .cornerRadius(60, corners: [.topLeft])

                //left Button


            }

        }
    }
}

struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(fruit: FruitModel(name: "Apple", image: "https://upload.wikimedia.org/wikipedia/commons/thumb/1/15/Red_Apple.jpg/265px-Red_Apple.jpg", description: "A Apple fruit", price: 35))
    }
}


extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape(RoundedCorner(radius: radius, corners: corners))
    }
}
struct RoundedCorner: Shape {

    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}
