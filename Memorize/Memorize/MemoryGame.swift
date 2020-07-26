//
//  MemoryGame.swift
//  Memorize
//
//  Created by 胡翔 on 2020/7/26.
//  Copyright © 2020 john. All rights reserved.
//

import Foundation

struct MemoryGame<CardContent> {
    var cards:Array<Card>
    
    init(numberOfPairsOfCards:Int, cardContentFactory:(Int) -> CardContent) {
        cards = Array<Card>()
        for pairIndex in 0..<numberOfPairsOfCards {
            let content = cardContentFactory(pairIndex)
            cards.append(Card(content: content, id: pairIndex*2))
            cards.append(Card(content: content, id: pairIndex*2+1))
        }
    }
    
    func choose(card:Card) {
        print("card choosen:\(card)")
    }
    
    struct Card: Identifiable {
        var isFaceUp: Bool = false
        var isMatched: Bool = false
        var content: CardContent
        var id: Int
    }
}
