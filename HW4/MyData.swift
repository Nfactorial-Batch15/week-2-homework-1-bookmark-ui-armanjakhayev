//
//  MyData.swift
//  HW4
//
//  Created by Arman on 12/22/21.
//

import SwiftUI
class MyData: ObservableObject {
    var showSaveSheet: Bool
    var usedWords: [String]
    var newWord: String
//    var newURL: URL

    
    init() {
        self.showSaveSheet = false
        self.usedWords = [String]()
        self.newWord = ""
//        self.newURL = URL(string: "http://www.google.com")
    }
    
    func addNewWord() {
        let answer = newWord.trimmingCharacters(in: .whitespacesAndNewlines)

        guard answer.count > 0 else { return }
        usedWords.insert(answer, at: 0)
        newWord = ""
    }
    
}
