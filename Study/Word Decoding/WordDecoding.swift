//
//  WordDecoding.swift
//  Study
//
//  Created by Matthew cai on 7/8/18.
//  Copyright © 2018 Matthew cai. All rights reserved.
//

import Cocoa

class WordDecoding: NSObject, Runable {
    let maxValue = 26
    
    var testValues: [Int]

    init(testValues: [Int]) {
        self.testValues = testValues
    }
    
    func run() {
        for i in self.testValues {
            let result = findValue(number: i)
            print("result for \(i) = \(result)")
        }
    }
    
    func findValue(number: Int) -> Int {
        
        if number < 0 {
            return 0
        }
        
        if number <= 26 {
            return 1
        }
        if number % 100 == number {
            return 1 + findValue(number: number % 10)
        }

        let lastNumber = number % 10
        let secondToLast = number % 100
        
        return findValue(number: lastNumber) + findValue(number: secondToLast)
    }

}

/*
 
 5 -> 5
 
 */
