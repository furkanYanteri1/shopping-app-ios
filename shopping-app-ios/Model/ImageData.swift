//
//  ImageData.swift
//  shopping-app-ios
//
//  Created by Furkan Yanteri on 13.05.2025.
//

struct fruitModel{
    var id:Int
    var title:FruitTitle
    var image:String
    var price:String
    var cardColor:String
    
}

enum FruitTitle:String{
    case apple, appricot, avacado, banana, blackberry, cherry, dragonfruit, fig, grapes, kiwi, lemon, mango, muskmelon, orange, papaya, pear, pineapple, plum, raspberry, strawberry, watermelon
}
