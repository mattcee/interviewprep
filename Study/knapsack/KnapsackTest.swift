//
//  KnapsackTest.swift
//  Study
//
//  Created by Matthew cai on 7/4/18.
//  Copyright © 2018 Matthew cai. All rights reserved.
//

import Cocoa

class KnapsackTest: NSObject {
    
    func runTest() {
        let cost = [0, 2, 4, 5, 6]
        let weight = [0, 4, 10, 5, 6]
        let knapsack = Knapsack(cost: cost, weight: weight)
        knapsack.search(with: 4)
        knapsack.search(with: 10)
        knapsack.search(with: 15)

        
    }
    
    
}
