//
//  FruitlesApp.swift
//  Fruitles
//
//  Created by Ali Erdem Kökcik on 14.01.2023.
//

import SwiftUI

@main
struct FructusApp: App {
  @AppStorage("isOnboarding") var isOnboarding: Bool = true
  
  var body: some Scene {
    WindowGroup {
      if isOnboarding {
        ContentView()
      } else {
        OnboardingView()
      }
    }
  }
}
