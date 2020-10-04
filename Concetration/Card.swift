//
//  Card.swift
//  Concetration
//
//  Created by Alexander Rozhdestvenskiy on 17.06.2020.
//  Copyright © 2020 evilroot. All rights reserved.
//

import Foundation

struct Card: Hashable {
    
    var hushValue: Int { return identifier }
    
    static func == (lhs: Card, rhs: Card) -> Bool {
        return lhs.identifier == rhs.identifier
    }
    
    
    var isFaceUp = false
    var isMatched = false
    private var identifier: Int
    
    private static var identifierFactory = 0
    
    private static func getUniqueIdentifier() -> Int {
        identifierFactory += 1
        return identifierFactory
    }
    
    init() {
        self.identifier = Card.getUniqueIdentifier()
    }
    
}






