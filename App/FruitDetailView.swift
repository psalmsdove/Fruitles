//
//  FruitDetailView.swift
//  Fruitles
//
//  Created by Ali Erdem Kökcik on 15.01.2023.
//

import SwiftUI

struct FruitDetailView: View {
    //MARK: Properties
    var fruit: Fruit
    //MARK: Body
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false){
                VStack(alignment: .center, spacing: 20){
                    // MARK: Header
                    FruitHeaderView(fruit: fruit)
                    VStack(alignment: .leading, spacing: 20) {
                    // MARK: Title
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruit.gradientColors[1])
                    // MARK: Headline
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                    // MARK: Nutrients
                        FruitNutrientsView(fruit: fruit)
                    // MARK: Subheadline
                        Text("Learn more about \(fruit.title)".uppercased())
                            .fontWeight(.bold)
                            .foregroundColor(fruit.gradientColors[1])
                    // MARK: Description
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                    // MARK: Link
                        SourceLinkView()
                    } //: VStack
                    .padding(.horizontal, 20)
                    .frame(maxWidth: 640, alignment: .center )
                } //: VStack
                .navigationBarTitle(fruit.title, displayMode: .inline)
                .navigationBarHidden(true)
            } //: Scroll
            .edgesIgnoringSafeArea(.top)
        } //: Navigation
    }
}
    //MARK: Preview
struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(fruit: fruitsData[0])
    }
}
