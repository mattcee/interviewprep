//
//  main.swift
//  Study
//
//  Created by Matthew cai on 6/24/18.
//  Copyright © 2018 Matthew cai. All rights reserved.
//

import Foundation

protocol Testable {
    func runTest()
}

extension Testable {
    
    func runTest<T: Runable>(input: [T]) {
        for item in input {
            item.run()
            printSeperator()
        }
    }
    
    func printSeperator() {
        print(" ")
        print("---------------------------")
        print(" ")
    }
    
}

protocol Runable {
    func run()
}


// word search
//let wordSearch = WordSearchMain()
//wordSearch.runTest()


// knapsack problem
//let knapsack = KnapsackTest()
//knapsack.runTest()

// Word Permutation
//let wordPermutationTest = WordPermutationTest()
//wordPermutationTest.runTest()


// Longest SubArray
let subArray = LongestSubArrayTest()
subArray.runTest()
