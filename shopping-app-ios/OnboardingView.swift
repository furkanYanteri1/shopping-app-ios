//
//  OnboardingView.swift
//  shopping-app-ios
//
//  Created by Furkan Yanteri on 13.05.2025.
//

import SwiftUI

struct OnboardingView: View {
    var body: some View {
        NavigationView{
            VStack(spacing: 30){
                Spacer()
                Image("img")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .padding()
                VStack(alignment: .leading, spacing: 10){
                    Text("Order Your Favorite Fruits")
                        .fontWeight(.bold)
                        .font(.system(.largeTitle))
                    Text("Fresh & Healthy")
                        .font(.system(.title3))
                        .foregroundStyle(.black.opacity(0.7))
                }
            Spacer()
            NavigationLink(destination: HomeView()) {
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color("6"))
                    .frame(width: 280, height: 60, alignment: .trailing)
                    .overlay {
                        HStack(spacing:10){
                            Text("Next")
                                .font(.title)
                                .fontWeight(.bold)
                            Image(systemName: "chevron.right")
                        }
                        .foregroundStyle(.black)
                    }
            }
                Spacer()
            }
        }
        .navigationBarHidden(true)
    }
}

#Preview {
    OnboardingView()
}
