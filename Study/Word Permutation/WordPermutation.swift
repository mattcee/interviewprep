//
//  WordPermutation.swift
//  Study
//
//  Created by Matthew cai on 7/8/18.
//  Copyright © 2018 Matthew cai. All rights reserved.
//

import Cocoa

class WordPermutation: NSObject {
    
    var word: String
    
    init(word: String) {
        self.word = word
    }
    
    func search() {
        let words = permutation(word: self.word)
        print(words)
    }
    
    
    func permutation(word: String) -> [String] {
        var tempListOfWords = [String]()
        if word.count == 0 {
            return tempListOfWords
        }
        tempListOfWords.append(word)
        for i in 0..<word.count {
            let leftSide = getWord(word: word, firstIndex: 0, secondIndex: i)
            let rightSide = getWord(word: word, firstIndex: i+1, secondIndex: word.count)
            let newWord = leftSide + rightSide
            let words = permutation(word: newWord)
            tempListOfWords.append(contentsOf: words)
        }
        return tempListOfWords
    }
    
    
    func getWord(word: String, firstIndex: Int, secondIndex: Int) -> String {
        let arrayOfCharacters = Array(word)[firstIndex..<secondIndex]
        return String(arrayOfCharacters)
    }

}


/*
 
 example
 
 ab
a  b
 
 base case
 
 abc
 ab bc ac
 
 
 */
