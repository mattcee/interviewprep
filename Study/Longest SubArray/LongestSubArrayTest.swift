//
//  LongestSubArrayTest.swift
//  Study
//
//  Created by Matthew cai on 7/8/18.
//  Copyright © 2018 Matthew cai. All rights reserved.
//

import Cocoa

class LongestSubArrayTest: NSObject, Testable {
    
    func runTest() {
        let testItems = [
            LongestSubArray(list: [1, 2, 3]),
            LongestSubArray(list: [1, 2, 3, 5]),
            LongestSubArray(list: [1, 2, 3, 1, 4, 5, 2]),
            LongestSubArray(list: [5, 6, 1, 2, 3]),
            LongestSubArray(list: [1, 3, 2, 3, 4, 8, 7, 9])
        ]
        runTest(input: testItems)
    }


}
