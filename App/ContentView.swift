//
//  ContentView.swift
//  Fruitles
//
//  Created by Ali Erdem Kökcik on 14.01.2023.
//

import SwiftUI

struct ContentView: View {
    //MARK: Properties
    var fruits: [Fruit] = fruitsData
    //MARK: Body
    
    var body: some View {
        VStack {
            NavigationView{
                List{
                    ForEach(fruits.shuffled()) { item in
                        NavigationLink(destination: FruitDetailView(fruit: item)){
                            FruitRovView(fruit: item)
                        }
                    }
                }
                .navigationTitle("Fruits")
            } //: Navigation
        }
    }
    
    //MARK: Preview
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView(fruits: fruitsData)
        }
    }
}
