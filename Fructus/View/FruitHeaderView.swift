//
//  FruitHeaderView.swift
//  Fructus
//
//  Created by Loc Nguyen on 12/09/2021.
//

import SwiftUI

struct FruitHeaderView: View {
    var fruit: Fruit
    @State private var isAnimation = false
    
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/)
            Image(fruit.image)
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .scaleEffect(isAnimation ? 1.0 : 0.6)
        }
        .frame(height: 400)
        .onAppear(){
            withAnimation(.easeOut(duration: 0.5)){
                isAnimation = true
            }
        }
        
    }
}

struct FruitHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        FruitHeaderView(fruit: fruitsData[1])
            .previewLayout(.sizeThatFits)
    }
}
