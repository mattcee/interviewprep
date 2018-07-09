//
//  LongestSubArray.swift
//  Study
//
//  Created by Matthew cai on 7/8/18.
//  Copyright © 2018 Matthew cai. All rights reserved.
//

import Cocoa

class LongestSubArray: NSObject, Runable {
    
    var list: [Int]
    
    init(list: [Int]) {
        self.list = list
    }
    
    func run() {
        var finalResult = 0
        for i in 0..<self.list.count {
            let result = longestSquence(indexStart: i, indexEnd: i)
            print("longest Sequence: \(result)")
            finalResult = max(result, finalResult)
            
        }
        
        print("Final longest Sequence: \(finalResult)")

    }
    
    // going to start from the end of the array so we dont have to worry about array out of bounds
    func longestSquence(indexStart: Int, indexEnd: Int) -> Int {
        if indexEnd == self.list.count {
            return 0
        }
        let itemOne = self.list[indexStart]
        let itemTwo = self.list[indexEnd]
        var taken = 0
        if itemOne <= itemTwo {
             taken = 1 + longestSquence(indexStart:indexEnd , indexEnd: indexEnd + 1)
        }
        let notTaken = longestSquence(indexStart: indexStart, indexEnd: indexEnd + 1)
        
        return max(taken, notTaken)
    }
    
    

}

/*
 Given an array, return the length of the longest increasing subarray.
 
 For example, if the input is [1, 3, 2, 3, 4, 8, 7, 9], the output should be 5 because the longest increasing array is [1, 2, 3, 4, 8].
 
indexOne == IndexTwo return
 
 
 */
