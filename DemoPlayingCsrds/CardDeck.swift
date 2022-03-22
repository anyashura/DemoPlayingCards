//
//  CardDeck.swift
//  DemoPlayingCsrds
//
//  Created by Anna Shuryaeva on 20.03.2022.
//

import Foundation

struct CardDeck {
   
    var cards = [PlayingCards]()
    
        init() {
            for rank in PlayingCards.Rank.all {
                for suit in PlayingCards.Suit.all {
                            cards.append(PlayingCards(rank: rank, suit: suit))
                }
            }
        }
    
    mutating func draw() -> PlayingCards? {
        if cards.count > 0 {
            return cards.remove(at: cards.count.arc4random)
        } else {
            return nil
        }
        
    }
}

extension Int {
    var arc4random : Int {
        if self > 0 {
            return(Int(arc4random_uniform(UInt32(self))))
        } else if self < 0 {
            return -Int(arc4random_uniform(UInt32(abs((self)))))
        } else {
            return 0
        }
    }
}
