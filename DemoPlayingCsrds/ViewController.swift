//
//  ViewController.swift
//  DemoPlayingCsrds
//
//  Created by Anna Shuryaeva on 20.03.2022.
//

import UIKit

class ViewController: UIViewController {

    private(set) var deck = CardDeck()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        for _ in 1...10 {
            if let card = deck.draw() {
                print("\(card)")
            }
        }
    }
}

