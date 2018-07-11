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
//let subArray = LongestSubArrayTest()
//subArray.runTest()


// heap
//let heapifyTesting = HeapifyTest()
//heapifyTesting.runTest()

// Form Number

//let numberTest = FormNumberTest()
//numberTest.runTest()




// word decoding
// not wokring
//
//let wordDecodingTest = WordDecodingTest()
//wordDecodingTest.runTest()


// Generating sum from array

let sumFromArray = GenerateSumWithArrayTest()
sumFromArray.runTest()


let coinChange = CoinChangeTest()
coinChange.runTest()



// coins

//f(0) = 0
//f(1) = 1
//f(2) = 1
//f(3) = 1
//f(4) = 3

//func coin(n: Int) -> Int {
//
//    if n < 5 {
//        return n
//    }
//    
//    return coin(n: n/2) + coin(n: n/3) + coin(n: n/4)
//}
//
//let result = coin(n: 9)
//print(result)
