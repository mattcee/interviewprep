//
//  FormNumber.swift
//  Study
//
//  Created by Matthew cai on 7/8/18.
//  Copyright © 2018 Matthew cai. All rights reserved.
//

import Cocoa

class FormNumber: NSObject, Runable {
    
    var values: [Int]
    
    init(values: [Int]) {
        self.values = values
    }
    
    func run() {
        let number = 6
        let result = solve(n: number)
        print(result)
    }
    
    func solve(n: Int) -> Int {
        
        if n < 0 {
            return 0
        }
        
        if n == 0 {
            return 1
        }
        
        return solve(n: n-3) + solve(n: n-5) + solve(n: n-1)
        
    }

}
