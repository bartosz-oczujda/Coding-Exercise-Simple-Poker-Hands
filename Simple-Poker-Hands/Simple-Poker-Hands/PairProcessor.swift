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
        
        let count = 2
        let setFinder = SetFinder()
        let result = setFinder.findSet(cards, length: count)
        
        return count == result.found.count
    }
    
}