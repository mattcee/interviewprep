//
//  WordSearch.swift
//  Study
//
//  Created by Matthew cai on 6/24/18.
//  Copyright © 2018 Matthew cai. All rights reserved.
//

import Cocoa

class WordSearch: NSObject {
    
    var groupOfWords: Set<String>
    var dictionaryOfWords = [Character: [String]]()
    
    init(groupOfWords: Set<String>)
    {
        self.groupOfWords = groupOfWords
    }
    
    func buildWordDictionary() {
        for word in self.groupOfWords {
            if let key = word.first {
                if let currentWords = self.dictionaryOfWords[key] {
                    let newArrayOfWords = currentWords + [word]
                    self.dictionaryOfWords[key] = newArrayOfWords
                } else {
                    self.dictionaryOfWords[key] = [word]
                }
            }
        }
    }
    
    func checkContains(word: String) -> Bool {
        
        if word.count == 0 {
            return false
        }
        
        if word.count == 1 {
            return checkContains(word: word)
        }
        
        var pointerOne = 0
        var pointerTwo = 1
        
        for _ in 0..<word.count {
            let currentWord = getWord(word: word, firstIndex: pointerOne, secondIndex: pointerTwo)
            if checkForWord(word: currentWord) {
                pointerOne = pointerTwo
            }
            if pointerTwo + 1 <= word.count {
                pointerTwo = pointerTwo + 1
            }
        }
        
        return pointerTwo == pointerOne
    }
    
    func checkForWord(word: String) -> Bool {
        let length = word.count
        guard let firstCharacter = word.first else {
            return false
        }
        let arrayOfWords = self.dictionaryOfWords[firstCharacter]
        return arrayOfWords?.filter{ return $0.count == length }.contains(word) == true
    }
    
    func getWord(word: String, firstIndex: Int, secondIndex: Int) -> String {
        let arrayOfCharacters = Array(word)[firstIndex..<secondIndex]
        return String(arrayOfCharacters)
    }

}
