//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Patrick Frei on 25.11.21.
//


// ViewModel

import SwiftUI



class EmojiMemoryGame: ObservableObject { // observable objects can publish to the world that something changed
    
    static let emojis = ["π", "π‘", "π", "π³", "π«", "π¦", "π", "π§", "π¨", "βΊοΈ", "πͺ", "π", "π", "βοΈ", "π½", "πΎ", "πΉ", "π‘", "π―", "πͺ", "π«", "π¦", "βοΈ", "π©"]
    
    static func createMemoryGame() -> MemoryGame<String> { // type function (function on type itself, not on instances)
        MemoryGame<String>(numberOfPairsOfCards: 4) { pairIndex in
            emojis[pairIndex]
        }
    }
    
    @Published private var model: MemoryGame<String> = createMemoryGame() // publishes to the world something changed any time the model changed (step 1/2)
    
    
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    
    // MARK: - intents
    
    func choose(_ card: MemoryGame<String>.Card) {
        model.choose(card)
    }
}
