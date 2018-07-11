//
//  FormNumberTest.swift
//  Study
//
//  Created by Matthew cai on 7/8/18.
//  Copyright © 2018 Matthew cai. All rights reserved.
//

import Cocoa

class FormNumberTest: NSObject, Testable {
    
    func runTest() {
        let items = [
            FormNumber(values: [1, 3, 5])
        ]
        runTest(input: items)
    }

}
