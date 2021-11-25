//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Patrick Frei on 25.11.21.
//


// ViewModel

import SwiftUI



class EmojiMemoryGame {
    
    static let emojis = ["🚌", "🎡", "🏖", "🛳", "🛫", "🚦", "🏝", "🚧", "🏨", "⛺️", "🪝", "🌋", "🎇", "⌚️", "💽", "💾", "🕹", "📡", "🕯", "🪓", "📫", "📦", "✏️", "🚩"]
    
    static func createMemoryGame() -> MemoryGame<String> { // type function (function on type itself, not on instances)
        MemoryGame<String>(numberOfPairsOfCards: 4) { pairIndex in
            emojis[pairIndex]
        }
    }
    
    private var model: MemoryGame<String> = createMemoryGame()
    
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
}
