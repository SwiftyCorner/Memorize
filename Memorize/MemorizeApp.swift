//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Patrick Frei on 13.11.21.
//

import SwiftUI

@main
struct MemorizeApp: App {
    let game = EmojiMemoryGame() // game is a pointer to a class; 'let' means we don't change the pointer
    
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: game)
        }
    }
}
