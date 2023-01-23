//
//  FruitModel.swift
//  Fruitles
//
//  Created by Ali Erdem Kökcik on 15.01.2023.
//

import Foundation
import SwiftUI

//MARK: Fruits Data Model

struct Fruit: Identifiable{
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var nutrition: [String]
}
