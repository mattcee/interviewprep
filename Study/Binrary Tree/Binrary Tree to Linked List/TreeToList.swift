//
//  TreeToList.swift
//  Study
//
//  Created by Matthew cai on 7/10/18.
//  Copyright © 2018 Matthew cai. All rights reserved.
//

import Cocoa

class TreeToList: NSObject, Runable {
    
    var root: Node
    
    init(root: Node) {
        self.root = root
    }
    
    func run() {
        let node = buildLink(node: self.root)
        print("Top head node value \(node?.value)")
    }
    
    func buildLink(node: Node?) -> Node? {
        if node == nil {
            return node
        }
        
        let _ = buildLink(node: node?.left)
        print("node \(node?.value)")
        let _ = buildLink(node: node?.right)
        linkNode(node: node)

        return getHead(node: node)
    }
    
    func linkNode(node: Node?) {
        if node?.left != nil {
            node?.left = node
        }
        if node?.right != nil {
            node?.right = node
        }
//        return node
    }
    
    func getHead(node: Node?) -> Node? {
        var copyNode = node
        while copyNode?.left != nil {
            copyNode = copyNode?.left
        }
        return copyNode
    }
    
}


class Node {
    var value: Int
    var left: Node?
    var right: Node?
    
    init(value: Int) {
        self.value = value
    }
}

/*
 
            8
        9       10
 
 9 -> 8 -> 10
 
 Look left
 add Middle
 Look right
 
 
 
 
 
                  8
            9         10
        10     12   14    13
 
 
 10 -> 9 -> 12 -> 8 -> 10 -> 14 -> 13
 
 */
