//
//  GenerateSumWithArray.swift
//  Study
//
//  Created by Matthew cai on 7/8/18.
//  Copyright © 2018 Matthew cai. All rights reserved.
//

import Cocoa

class GenerateSumWithArray: NSObject, Runable {
    
    var values: [Int]
    
    init(values: [Int]) {
        self.values = values
    }
    
    func run() {
        let expectedValue = 5
        let value = findValue(index: self.values.count - 1, sum: 5)
        print("value = \(value) , expected value = \(expectedValue) ")
    }
    
    // [1,2,3] 5
    // index = 2 sum = 5
    func findValue(index: Int,  sum: Int) -> Bool {

        if index < 0 {
            return false
        }
        if sum == 0 {
            return true
        }
        
        return findValue(index:index-1, sum:sum - self.values[index]) || findValue(index:index - 1, sum: sum)
        
    }

}


/*
 
 Given a set of non-negative integers, and a value sum, determine if there is a subset of the given set with sum equal to given sum.
 

 
 Examples: set[] = {3, 34, 4, 12, 5, 2}, sum = 9
 Output:  True  //There is a subset (4, 5) with sum 9.
 

 if index < 0
 return 0
 
 if index = 0
 
 if value > sum {
      recursive (index--, sum)
 }
 
 result =  recursive(index
 
 
 */
