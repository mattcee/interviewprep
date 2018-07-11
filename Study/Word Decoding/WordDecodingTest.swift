//
//  WordDecodingTest.swift
//  Study
//
//  Created by Matthew cai on 7/8/18.
//  Copyright © 2018 Matthew cai. All rights reserved.
//

import Cocoa

class WordDecodingTest: NSObject, Testable {
    
    func runTest() {
        let items = [
            WordDecoding(testValues: [5]),
            WordDecoding(testValues: [52]),
            WordDecoding(testValues: [25]),
            WordDecoding(testValues: [25114])
        ]
        runTest(input: items)
    }

}
