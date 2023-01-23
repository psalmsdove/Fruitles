//
//  OnboardingView.swift
//  Fruitles
//
//  Created by Ali Erdem Kökcik on 15.01.2023.
//

import SwiftUI

struct OnboardingView: View {
    
    //MARK: Properties
    
    var fruits: [Fruit] = fruitsData
    
    //MARK: Body
    
    var body: some View {
        TabView{
            ForEach(fruits[0...5]){ item in // Usually you shouldn't show more than 4-5 views on an onboarding screen
                FruitCardView(fruit: item)
            } //: Loop
            
        } //: Tab
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

    //MARK: Preview

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(fruits: fruitsData)
    }
}
