//
//  MemoryGame.swift
//  Memorize
//
//  Created by Patrick Frei on 25.11.21.
//

import Foundation

struct MemoryGame<CardContent> {
    private(set) var cards: Array<Card> // private(set): others can look at the model, but not change it (less restrictive than private)s
    
    func choose(_ card: Card) { // here the cards can change value
        
    }
    
    init(numberOfPairsOfCards: Int, createCardContent: (Int) -> CardContent) { // functional programming!
        cards = Array<Card>()
        
        for pairIndex in 0..<numberOfPairsOfCards {
            let content = createCardContent(pairIndex)
            cards.append(Card(content: content))
            cards.append(Card(content: content))
        }
    }
    
    struct Card {
        var isFaceUp = false
        var isMatched = false
        var content: CardContent // generic type (can be String, image,...)
    }
}
