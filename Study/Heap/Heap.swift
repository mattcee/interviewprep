//
//  Heap.swift
//  Study
//
//  Created by Matthew cai on 7/8/18.
//  Copyright © 2018 Matthew cai. All rights reserved.
//

import Cocoa

class Heap: NSObject, Runable {
    
    var items: [Int]
    
    init(items: [Int]) {
        self.items = items
    }
    
    func run() {
        heapify()
        print("items in array : \(self.items)")
    }

    func heapify() {
        let middle = self.items.count / 2
        for i in (0..<middle).reversed() {
            let root = self.items[i]
            let leftChildIndex = 2^i
            let rightChildIndex = 2^i + 1
            
            
            if leftChildIndex > self.items.count - 1 {
                continue
            } else {
                if rightChildIndex > self.items.count - 1 {
                    // compare root and left
                    let leftChild = self.items[leftChildIndex]
                    if leftChild > root {
                        self.items = swap(array: self.items, rootIndex: i, childIndex: leftChildIndex)
                    }
                } else {
                    //compare root with left and right child
                    let rightChild = self.items[rightChildIndex]
                    let leftChild = self.items[leftChildIndex]
                    
                    if leftChild > rightChild {
                        if leftChild > root {
                            //swap
                            self.items = swap(array: self.items, rootIndex: i, childIndex: leftChildIndex)
                        }
                    } else {
                        if rightChild > root {
                            self.items = swap(array: self.items, rootIndex: i, childIndex: rightChildIndex)
                        }
                    }

                }
            }
            
        }
        
    }
    
    func swap(array: [Int], rootIndex: Int, childIndex: Int) -> [Int] {
        var newArray = array
        let rootValue = newArray[rootIndex]
        newArray[rootIndex] = newArray[childIndex]
        newArray[childIndex] = rootValue
        return newArray
    }
    
    func pop() -> Int {
        let rootValue = self.items[0]
        if self.items.count == 1 {
            self.items.remove(at: 0)
        } else {
            self.items[0] = self.items.remove(at: self.items.count - 1)
        }
        return rootValue
    }
    
}



/*
 
 [5, 4, 3]
 2^i + 1
 2^i + 2
 
 i = 0 left is 1 and right is 2
     5
 4       3
 
 
 */
