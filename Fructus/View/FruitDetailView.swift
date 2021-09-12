//
//  FruitDetailView.swift
//  Fructus
//
//  Created by Loc Nguyen on 12/09/2021.
//

import SwiftUI

struct FruitDetailView: View {
    var fruit: Fruit
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical){
                VStack() {
                    FruitHeaderView(fruit: fruit)
                    VStack(alignment: .leading, spacing: 10.0) {
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruit.gradientColors[1])
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                            
                        Text("Learn more about \(fruit.title)".uppercased())
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .foregroundColor(fruit.gradientColors[1])
                        Text(fruit.description)
                        SourceLinkView()
                    }
                    padding(10)
                    //                .padding(.horizontal, 5)
                }
                .frame(maxWidth: 640, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            }
            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        }
    }
}

struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(fruit: fruitsData[1])
    }
}
