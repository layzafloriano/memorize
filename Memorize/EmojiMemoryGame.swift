//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Layza Floriano on 30/06/20.
//  Copyright © 2020 Layza Floriano. All rights reserved.
//

import SwiftUI

class EmojiMemoryGame {
    private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
    
    static func createMemoryGame() -> MemoryGame<String> {
        let emojis: Array<String> = ["👻", "🎃", "🕷"]
        return MemoryGame<String>(numberOfPairsOfCards: emojis.count) {pairIndex in
            return emojis[pairIndex]
        }
    }

    
    // MARK: - Access o the Model
    
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    
    // MARK: - Intents
    
    func choose(card: MemoryGame<String>.Card) {
        model.choose(card: card)
    }
}

