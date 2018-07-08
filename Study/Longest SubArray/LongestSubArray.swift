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
        let longest = longestSquence(index: self.list.count - 1)
        print("longest: \(longest)")
    }
    
    // going to start from the end of the array so we dont have to worry about array out of bounds
    func longestSquence(index: Int) -> Int {
        if index < 0 {
            return 0
        }
        
        if index == 0 {
            return 1
        }
        
        let itemOne = self.list[index - 1]
        let itemTwo = self.list[index]
        if itemOne <= itemTwo {
            return 1 + longestSquence(index: index - 1)
        } else {
            let longestLength = longestSquence(index: index - 1)
            return longestLength
        }
    }

}

/*
 Given an array, return the length of the longest increasing subarray.
 
 For example, if the input is [1, 3, 2, 3, 4, 8, 7, 9], the output should be 5 because the longest increasing array is [1, 2, 3, 4, 8].
 
indexOne == IndexTwo return
 
 
 */
