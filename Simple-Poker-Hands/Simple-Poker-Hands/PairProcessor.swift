//
//  PairProcessor.swift
//  Simple-Poker-Hands
//
//  Created by Bartosz Oczujda on 02/02/16.
//  Copyright © 2016 Pixelrockit. All rights reserved.
//

import Foundation

class PairProcessor: HandProcessor {
    
    func process(cards: [Card]) -> Bool {
        
        var count = 0
        
        for card in cards {
            let filtered = cards.filter({ $0.rank == card.rank })
            count = filtered.count
            if (count == 2) { break }
        }
                
        return count == 2
    }
    
}