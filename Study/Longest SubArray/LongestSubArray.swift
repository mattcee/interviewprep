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
        let longest = longestSquence(indexOne: self.list.count - 2, indexTwo: self.list.count - 1) + 1
        print("longest: \(longest)")
    }
    
    // going to start from the end of the array so we dont have to worry about array out of bounds
    func longestSquence(indexOne: Int, indexTwo: Int) -> Int {
        print("indexOne: \(indexOne), indexTwo: \(indexTwo)")
        if indexOne > indexTwo || indexOne < 0 {
            return 0
        }
        
        if indexOne == indexTwo {
            return 0
        }
        
        let itemOne = self.list[indexOne]
        let itemTwo = self.list[indexTwo]
        if itemOne <= itemTwo {
            print("adding one")
            return 1 + longestSquence(indexOne: indexOne - 1, indexTwo: indexOne)
        } else {
            return longestSquence(indexOne: indexOne - 1, indexTwo: indexOne)
        }
    }

}

/*
 Given an array, return the length of the longest increasing subarray.
 
 For example, if the input is [1, 3, 2, 3, 4, 8, 7, 9], the output should be 5 because the longest increasing array is [1, 2, 3, 4, 8].
 
indexOne == IndexTwo return
 
 
 */
