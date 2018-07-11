//
//  CoinChange.swift
//  Study
//
//  Created by Matthew cai on 7/8/18.
//  Copyright © 2018 Matthew cai. All rights reserved.
//

//https://www.geeksforgeeks.org/dynamic-programming-set-7-coin-change/

import Cocoa

class CoinChange: NSObject, Runable {
    
    var coins: [Int]
    
    init(coins: [Int]) {
        self.coins = coins
    }
    
    func run() {
        let coins = count(index: self.coins.count - 1, sum: 5)
        print("coins: \(coins)")
        
        let secondCoins = count(index: self.coins.count - 1, sum: 10)
        print("secondCoins: \(secondCoins)")
        
        let thirdCoins = count(index: self.coins.count - 1, sum: 11)
        print("thirdCoins: \(thirdCoins)")
    }
    
    func count(index: Int, sum: Int) -> Int {
        
        if index < 0 {
            return 0
        }
        
        if sum == 0 {
            return 0
        }
        
        if self.coins[index] > sum {
             return count(index: index - 1, sum: sum)
        }
        
        let skip = count(index: index - 1, sum: sum)
        let select = 1 + count(index: index, sum: sum - self.coins[index])
        return findMin(x: skip, y: select)
    }
    
    func findMin(x: Int, y: Int) -> Int {
//        print("coinOne: \(x) cointwo: \(y)")
        if x == 0 || y == 0 {
            return max(x, y)
        } else{
            return min(x, y)
        }
        
    }
    
}
