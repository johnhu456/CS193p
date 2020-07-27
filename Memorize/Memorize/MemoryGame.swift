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
    
    mutating func choose(_ card:Card) {
        print("card choosen:\(card)")
        let chosenIndex = indexOf(of: card)
        cards[chosenIndex].isFaceUp = !cards[chosenIndex].isFaceUp
    }
    
    func indexOf(of card: Card) -> Int {
        for index in 0..<cards.count {
            if cards[index].id == card.id {
                return index
            }
        }
        return 0 // TODO: Need fix
    }
    
    struct Card: Identifiable {
        var isFaceUp: Bool = true
        var isMatched: Bool = false
        var content: CardContent
        var id: Int
    }
}
