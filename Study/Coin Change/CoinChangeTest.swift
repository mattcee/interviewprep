//
//  CoinChangeTest.swift
//  Study
//
//  Created by Matthew cai on 7/10/18.
//  Copyright © 2018 Matthew cai. All rights reserved.
//

import Cocoa

class CoinChangeTest: NSObject, Testable {
    
    func runTest() {
        let items = [
            CoinChange(coins: [1, 4, 5]),
            CoinChange(coins: [10, 20])

        ]
        
        runTest(input: items)
    }

}
