//
//  Question.swift
//  Quizzler
//
//  Created by Xcode User on 2018-02-22.
//  Copyright © 2018 London App Brewery. All rights reserved.
//

import Foundation

class Question{
    // creating two properties
    let question : String
    let answer : Bool
    
    // init act like a constructor
    
    init(textQuestion : String, correctAnswer : Bool)
    {
        question = textQuestion
        answer = correctAnswer
    }
}
