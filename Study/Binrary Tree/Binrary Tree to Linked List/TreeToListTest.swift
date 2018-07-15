//
//  TreeToListTest.swift
//  Study
//
//  Created by Matthew cai on 7/10/18.
//  Copyright © 2018 Matthew cai. All rights reserved.
//

import Cocoa

class TreeToListTest: NSObject, Testable {
    
    func runTest() {
        let items = [
            
            TreeToList(root: simple())
        
        ]
        runTest(input: items)
    }
    
    func simple() -> Node {
        let root = Node(value: 8)
        root.left = Node(value: 9)
        root.right = Node(value: 10)
        return root
    }

}
