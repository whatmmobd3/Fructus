//
//  OnboardingView.swift
//  Fructus
//
//  Created by Loc Nguyen on 11/09/2021.
//

import SwiftUI

struct OnboardingView: View {
    var fruit: [Fruit] = fruitsData
    var body: some View {
        TabView {
            ForEach(fruit[/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/]) { item in
                FruitCardView(fruit: item)
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(fruit: fruitsData)
    }
}
