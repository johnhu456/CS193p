//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by 胡翔 on 2020/7/26.
//  Copyright © 2020 john. All rights reserved.
//

import Foundation

class EmojiMemoryGame: ObservableObject {
    @Published private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
    
    private static func createMemoryGame() -> MemoryGame<String> {
        let emojis: Array<String> = ["👻","🎃","🕷"]
        return MemoryGame<String>(numberOfPairsOfCards: emojis.count) {pairIndex in
            emojis[pairIndex]
        }
    }
    
    // MARK: - Access to the model
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    // MARK: - Intents
    func choose(card: MemoryGame<String>.Card) {
        model.choose(card)
    }
}
