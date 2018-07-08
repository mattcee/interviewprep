//
//  WordPermutationTest.swift
//  Study
//
//  Created by Matthew cai on 7/8/18.
//  Copyright © 2018 Matthew cai. All rights reserved.
//

import Cocoa

class WordPermutationTest: NSObject, Testable {
    
    func runTest() {
        let wordPermutation = WordPermutation(word: "ab")
        wordPermutation.search()
        
        printSeperator()
        
        let secondWordPermutation = WordPermutation(word: "abc")
        secondWordPermutation.search()

        
    }

}
