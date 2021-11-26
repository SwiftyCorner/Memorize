//
//  MemoryGame.swift
//  Memorize
//
//  Created by Patrick Frei on 25.11.21.
//

import Foundation

struct MemoryGame<CardContent> {
    private(set) var cards: Array<Card> // private(set): others can look at the model, but not change it (less restrictive than private)s
    
    mutating func choose(_ card: Card) { // mutating function can change struct; can only be called of struct is a var
        if let chosenIndex = cards.firstIndex(where: { $0.id == card.id }) {
            cards[chosenIndex].isFaceUp.toggle()
        }
    }
    
    init(numberOfPairsOfCards: Int, createCardContent: (Int) -> CardContent) { // functional programming!
        cards = Array<Card>()
        
        for pairIndex in 0..<numberOfPairsOfCards {
            let content = createCardContent(pairIndex)
            cards.append(Card(content: content, id: pairIndex * 2))
            cards.append(Card(content: content, id: pairIndex * 2 + 1))
        }
    }
    
    struct Card: Identifiable {
        var isFaceUp = true
        var isMatched = false
        var content: CardContent // generic type (can be String, image,...)
        var id: Int
    }
    
}
