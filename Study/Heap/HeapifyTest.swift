//
//  HeapifyTest.swift
//  Study
//
//  Created by Matthew cai on 7/8/18.
//  Copyright © 2018 Matthew cai. All rights reserved.
//

import Cocoa

class HeapifyTest: NSObject, Testable {

    func runTest() {
        let testItem = [
            Heap(items: [1, 2, 3, 4]),
            Heap(items: [1, 5, 3, 7, 3]),
            Heap(items: [1, 2, 2, 4, 9]),
            Heap(items: [3, 2, 1])
        ]
        runTest(input: testItem)
    }
}
