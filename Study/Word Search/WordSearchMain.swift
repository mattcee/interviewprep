//
//  WordSearchMain.swift
//  Study
//
//  Created by Matthew cai on 7/4/18.
//  Copyright © 2018 Matthew cai. All rights reserved.
//

import Cocoa

class WordSearchMain: NSObject {
    
    let groupOfWords: Set<String> = ["one", "cat", "dog", "five"]
    
    func runTest() {
        let wordSearch = WordSearch(groupOfWords: groupOfWords)
        wordSearch.buildWordDictionary()
        let testOne = wordSearch.checkContains(word: "onecat")
        print(testOne)
        print("-------------")
        
        
        let testTwo = wordSearch.checkContains(word: "onecatcat")
        print(testTwo)
        print("-------------")
        
        
        let testThree = wordSearch.checkContains(word: "onecatdogfive")
        print(testThree)
        print("-------------")
        
        
        let testFoud = wordSearch.checkContains(word: "oneca")
        print(testFoud)
        print("-------------")
    }

}
