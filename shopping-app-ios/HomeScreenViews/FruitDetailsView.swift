//
//  FruitDetailsView.swift
//  shopping-app-ios
//
//  Created by Furkan Yanteri on 14.05.2025.
//

import SwiftUI
struct topBgShape: Shape{
    let corners:UIRectCorner
    let radius:CGFloat
    
    func path(in rect:CGRect) -> Path{
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        
        return Path(path.cgPath)
    }
}
struct Counter: View {
    @State var count = 0
    var body: some View{
        HStack(spacing:30){
            Button {
                if count < 10 {
                    //restricted adding more than 10 at once
                    count += 1
                }
            } label: {
                 Image(systemName: "plus")
                    .fontWeight(.bold)
            }
            Text("\(count)")
                .font(.system(.title2))
            Button {
                if count > 0 {
                    count -= 1
                }
            } label: {
                Image(systemName: "minus")
                    .fontWeight(.bold)
            }
        }
        .foregroundStyle(.black)
        .frame(width: 150, height: 40)
        .background(Color("bgColor").opacity(0.1))
        .cornerRadius(16)
        .padding(.horizontal)
    }
}

struct FruitDetailsView: View {
    @State var fruit: FruitTitle
    @State private var showIntroPhase = true

    var body: some View {
        VStack(alignment: .leading, spacing: 25){
            ZStack {
                Image("bg") // Final background
                    .resizable()
                    .opacity(showIntroPhase ? 0 : 1)
                
                Image("\(fruit)s-bg") // Initial background
                    .resizable()
                    .opacity(showIntroPhase ? 1 : 0.2)
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                    withAnimation(.easeInOut(duration: 1.0)) {
                        showIntroPhase = false
                    }
                    // Show fruit image a bit after the fade starts or ends
                }
            }

            .clipShape(topBgShape.init(corners: [.bottomLeft, .bottomRight], radius: 50))
            .ignoresSafeArea(.all)
            .frame(width: .infinity, height: .infinity, alignment: .top)
            .shadow(color: .gray, radius: 5, x: 5, y: 5)
            .overlay(
                Group {
                    if !showIntroPhase {
                        Image("\(fruit.rawValue)")
                            .resizable()
                            .frame(width: 250, height: 250, alignment: .center)
                            .shadow(color: .gray, radius: 5, x: 5, y: 5)
                            .offset(y:50)
                            .transition(.scale.combined(with: .opacity)) // Optional for animation
                    }
                }
            )



            Spacer()
            Text("\(fruit.rawValue) - Medium")
                .fontWeight(.medium)
                .font(.system(.title))
                .padding(.horizontal)
                .textCase(.uppercase)
            Text("Each (500g - 700g)")
                .padding(.horizontal)
            Text("Organic agriculture is intended to produce high quality, nutritious food that contributes to preventive health care and well-being. In view of this, it avoids the use of fertilizers, pesticides, animal drugs and food additives that may have adverse health effects.")
                .font(.body)
                .fontWeight(.regular)
                .multilineTextAlignment(.leading)
                .lineLimit(6)
                .padding(.horizontal)
            HStack{
                RoundedRectangle(cornerRadius: 9)
                    .fill(Color("bgColor"))
                    .opacity(0.2)
                    .overlay(Image (systemName: "hourglass"))
                    .font(.system(size: 50))
                    .frame(width: 50, height: 50)
                VStack(alignment: .leading, spacing: 10){
                    Text("Delivery Time")
                    Text("35-55 mins")
                }
            }.padding(.horizontal)
            HStack{
                Text("1.95")
                    .fontWeight(.medium)
                    .font(.system(.title))
                    .padding(.horizontal)
                Spacer()
                Counter()
                
            }
            Image("bg")
                .resizable()
                .frame(width: 350, height: 50, alignment: .center)
                .cornerRadius(20)
                .shadow(color: .gray, radius: 5, x: 5, y: 5)
                .overlay(
                    Text("Add To Cart")
                        .font(.system(.title2))
                        .fontWeight(.medium)
                        .foregroundStyle(.white)
                )
                .padding(.horizontal)
            
        }
    }
}

#Preview {
    FruitDetailsView(fruit: .apple)
}
