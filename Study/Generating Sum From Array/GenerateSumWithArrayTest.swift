//
//  GenerateSumWithArrayTest.swift
//  Study
//
//  Created by Matthew cai on 7/8/18.
//  Copyright © 2018 Matthew cai. All rights reserved.
//

import Cocoa

class GenerateSumWithArrayTest: NSObject, Testable {

    func runTest() {
        let items = [
            GenerateSumWithArray(values: [1,2,3]),
            GenerateSumWithArray(values: [1,1])

        
        ]
        
        runTest(input: items)
    }
}
