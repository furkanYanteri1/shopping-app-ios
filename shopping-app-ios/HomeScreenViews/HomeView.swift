//
//  HomeView.swift
//  shopping-app-ios
//
//  Created by Furkan Yanteri on 13.05.2025.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 10){
            HStack {
                Image(systemName: "line.3.horizontal")
                Spacer()
                Image(systemName: "cart.badge.plus")
            }
            .font(.system(.title2))
            Text("Hey")
                .font(.title)
                .fontWeight(.bold)
            Text("Find Fresh Fruits")
            RoundedRectangle(cornerRadius: 15)
                .fill(.gray.opacity(0.3))
                .overlay(
                    HStack{
                        Image(systemName: "magnifyingglass")
                        Text("Search Fresh Fruits")
                            .foregroundStyle(.gray)
                            .multilineTextAlignment(.leading)
                        Spacer()
                    }.padding()
                ).frame(width: 350, height: 50, alignment: .center)
            Text("Top Selling")
                .font(.title)
                .fontWeight(.bold)
            TopSellingView()
            Text("Near You")
            NearYouView()
            Spacer()
            
        }.padding()
            .navigationTitle("")
            .navigationBarBackButtonHidden(true)
            .navigationBarHidden(true)
    }
}

#Preview {
    HomeView()
}
