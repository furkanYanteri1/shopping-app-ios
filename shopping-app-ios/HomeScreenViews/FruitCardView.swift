//
//  FruitCardView.swift
//  shopping-app-ios
//
//  Created by Furkan Yanteri on 13.05.2025.
//

import SwiftUI

let images:fruitModel = fruitModel(id: 1, title: .apple, image: "apple", price: "3.15$", cardColor: "1")
struct FruitCardView: View {
    let fruits:fruitModel
    
    var body: some View {
        ZStack{
            VStack(alignment: .center, spacing: 5){
                Text(fruits.title.rawValue)
                    .fontWeight(.bold)
                    .font(.system(.title3))
                    .foregroundStyle(.black)
                Text(fruits.price)
                    .font(.system(.title3))
                    .foregroundStyle(.black).opacity(0.7)
                Spacer()
            }
            
            .padding()
            .frame(width: 175, height: 150, alignment: .center)
            .background(Color(fruits.cardColor))
            .cornerRadius(20)
            .padding()
            ZStack {
                Image(fruits.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 110, alignment: .center)
            }
            .offset(y:50)
            
        }
        .frame(width: 175, height: 240, alignment: .center)
        .shadow(color: .black.opacity(0.4), radius: 3, x: 4, y: 4)
    }
  }

#Preview {
    FruitCardView(fruits:images)
}
