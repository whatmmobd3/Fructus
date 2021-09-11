//
//  OnboardingView.swift
//  Fructus
//
//  Created by Loc Nguyen on 11/09/2021.
//

import SwiftUI

struct OnboardingView: View {
    var body: some View {
        TabView {
            ForEach(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
                FruitCardView()
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
