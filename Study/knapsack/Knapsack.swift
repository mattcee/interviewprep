//
//  Knapsack.swift
//  Study
//
//  Created by Matthew cai on 7/4/18.
//  Copyright © 2018 Matthew cai. All rights reserved.
//

import Cocoa

class Knapsack: NSObject {
    
//    let cost = [2, 4, 5, 6]
//    let weight = [4, 10, 5, 6]

    
    var cost: [Int] // value
    var weight: [Int] // weight
    
    var cache = [[Int]]()
    
    init(cost: [Int], weight: [Int]) {
        self.cost = cost
        self.weight = weight
        
    }
    
    func search(with maxWeight: Int) {
        self.cache.removeAll()
        self.cache = buildCache(x: self.weight.count + 1, y: maxWeight + 1)
        let bestValue = searchForValue(index: self.weight.count - 1, weight: maxWeight)
        print("weight \(maxWeight) best value is = \(bestValue)")
        print("----------------------")
        print("----------------------")
        print("memorization")
        let memBestValue = searchForValueMemorization(index: self.weight.count - 1, weight: maxWeight)
        print("mem weight \(maxWeight) best value is = \(memBestValue)")

        print("----------------------")
        print("----------------------")

        print(" ")
        print(" ")

        
    }
    
    
    func buildCache(x: Int, y: Int) -> [[Int]] {
        var tempCache = [[Int]]()
        for _ in 0..<x {
            var row = [Int]()
            for _ in 0..<y {
                row.append(0)
            }
            tempCache.append(row)
        }
        return tempCache
    }
    
    func searchForValue(index: Int, weight: Int) -> Int {
        if index == 0 || weight == 0 {
            return 0
        }
        
        if weight < self.weight[index] {
            return searchForValue(index: index - 1, weight: weight)
        }
        
        let skipValue = searchForValue(index: index - 1, weight: weight)
        let newWeight = weight - self.weight[index]
        let continueValue = self.cost[index] + searchForValue(index: index - 1, weight: newWeight)
        return max(skipValue, continueValue)
    }
    
    func searchForValueMemorization(index: Int, weight: Int) -> Int {
        
        let cacheValue = self.cache[index][weight]
        if cacheValue != 0 {
            return cacheValue
        }
        
        var result = 0
        
        if index == 0 || weight == 0 {
            return 0
        }
        
        if weight < self.weight[index] {
            result = searchForValue(index: index - 1, weight: weight)
        } else {
            let skipValue = searchForValue(index: index - 1, weight: weight)
            let newWeight = weight - self.weight[index]
            let continueValue = self.cost[index] + searchForValue(index: index - 1, weight: newWeight)
            result = max(skipValue, continueValue)
        }
        self.cache[index][weight] = result
        return result
    }
    
    func bottomUpSearch(weight: Int) -> Int {
        
        var tempCache = buildCache(x: self.cost.count + 1 , y: weight + 1)
        
        for i in 0..<self.cost.count {
            for j in 0..<weight {
                if j == 0 || i == 0 {
                    tempCache[i][j] = 0
                } else if weight < self.weight[i] {
                    tempCache[i][j] = tempCache[i-1][j]
                } else {
                    let weight = weight - self.weight[i]
                    let skipValue = tempCache[i-1][j]
                    let continueValye = self.cost[i] + tempCache[i - 1][weight]
                    tempCache[i][j] = max(continueValye, skipValue)
                }
                
            }
        }
        
        return tempCache[self.cost.count][weight]
    }

}


/*
 
 base case:
 weight = 0
 return value = 0
 
 when weight < next weight
 skip
 
 
decision
 skip
 
 or continue
 
 get the max value from these
 
 
 [
 []
 
 ]
 
 
 */
