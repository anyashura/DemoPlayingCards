//
//  PlayingCards.swift
//  DemoPlayingCsrds
//
//  Created by Anna Shuryaeva on 20.03.2022.
//

import Foundation

struct PlayingCards: CustomStringConvertible {
    
    var description: String { return ("\(rank)\(suit)")}
    
    var rank : Rank
    var suit : Suit


    enum Rank :  CustomStringConvertible {
        case ace
        case face(String)
        case numeric(Int)
        
        var order : Int {
            switch self {
            case .ace: return 1
            case .face(let kind) where kind == "J" : return 11
            case .face(let kind) where kind == "Q" : return 12
            case .face(let kind) where kind == "K" : return 13
            case .numeric(let pips): return pips
            default : return 0
            }
        }
        
        static var all : [Rank] {
            var allRanks = [Rank.ace]
            for pips in 2...10 {
                allRanks.append(Rank.numeric(pips))
            }
            allRanks += [Rank.face("J"), Rank.face("Q"), Rank.face("K")]
            return allRanks
        }
        
        var description : String {
            switch self {
            case .ace:
                return "A"
            case .face(let kind):
                return kind
            case .numeric(let pips):
                return String(pips)
            }
        }
    }

    enum Suit : String, CustomStringConvertible {
        case spades = "♠️"
        case hearts = "♥️"
        case clubs = "♣️"
        case diamonds = "♦️"
    
        static var all = [Suit.clubs, .diamonds, .hearts, .spades]
        
        var description : String { return rawValue}
    }
}


