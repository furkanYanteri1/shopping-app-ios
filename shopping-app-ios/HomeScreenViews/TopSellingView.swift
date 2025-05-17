//
//  TopSellingView.swift
//  shopping-app-ios
//
//  Created by Furkan Yanteri on 14.05.2025.
//

import SwiftUI

struct TopSellingView: View {
    let images: [fruitModel] = [
        .init(id: 0, title: .apple, image: "apple", price: "$1.99 each", cardColor: "1"),
        .init(id: 1, title: .appricot, image: "appricot", price: "$2.04 each", cardColor: "2"),
        .init(id: 2, title: .avacado, image: "avocado", price: "$1.04 each", cardColor: "3"),
        .init(id: 3, title: .banana, image: "banana", price: "$2.06 each", cardColor: "4"),
        .init(id: 4, title: .cherry, image: "cherry", price: "$3.00 each", cardColor: "5"),
        .init(id: 5, title: .dragonfruit, image: "dragonfruit", price: "$1.04 each", cardColor: "6"),
        .init(id: 6, title: .fig, image: "fig", price: "$2.00 each", cardColor: "1"),
        .init(id: 7, title: .orange, image: "orange", price: "$1.00 each", cardColor: "2"),
        .init(id: 8, title: .grapes, image: "grapes", price: "$2.54 each", cardColor: "3"),
        .init(id: 9, title: .raspberry, image: "raspberry", price: "$3.04 each", cardColor: "4"),
        .init(id: 10, title: .papaya, image: "papaya", price: "$1.04 each", cardColor: "5"),
        .init(id: 11, title: .kiwi, image: "kiwi", price: "$2.78 each", cardColor: "6"),
        .init(id: 12, title: .lemon, image: "lemon", price: "$2.04 each", cardColor: "1"),
        .init(id: 13, title: .blackberry, image: "blackberry", price: "$2.04 each", cardColor: "2"),
        .init(id: 14, title: .mango, image: "mango", price: "1.00 each", cardColor: "3"),
        .init(id: 15, title: .muskmelon, image: "muskmelon", price: "$1.56 each", cardColor: "4"),
        .init(id: 16, title: .pear, image: "pear", price: "$2.04 each", cardColor: "5"),
        .init(id: 17, title: .pineapple, image: "pineapple", price: "$2.84 each", cardColor: "6"),
        .init(id: 18, title: .plum, image: "plum", price: "$1.15 each", cardColor: "1"),
        .init(id: 19, title: .strawberry, image: "strawberry", price: "$2.35 each", cardColor: "2"),
        .init(id: 20, title: .watermelon, image: "watermelon", price: "$1.64 each", cardColor: "3")
    ]
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            HStack(alignment: .center, spacing: 20){
                ForEach(images, id: \.id){ img in
                    NavigationLink(destination: FruitDetailsView(fruit: img.title)) {
                        FruitCardView(fruits: img)
                    }
                    
                }
            }
        }
    }
}

#Preview {
    TopSellingView()
}
