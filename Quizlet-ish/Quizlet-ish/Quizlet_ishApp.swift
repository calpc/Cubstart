//
//  Quizlet_ishApp.swift
//  Quizlet-ish
//
//  Created by Priscilla Chen on 11/18/22.
//



import SwiftUI

@main
struct Quizlet_ishApp: App {
    
    init() {
            FirebaseApp.configure()
          }

    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
