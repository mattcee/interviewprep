//
//  main.swift
//  Study
//
//  Created by Matthew cai on 6/24/18.
//  Copyright © 2018 Matthew cai. All rights reserved.
//

import Foundation

let groupOfWords: Set<String> = ["one", "cat", "dog", "five"]

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

