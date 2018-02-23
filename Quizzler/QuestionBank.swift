//
//  QuestionBank.swift
//  Quizzler
//
//  Created by Xcode User on 2018-02-22.
//  Copyright © 2018 London App Brewery. All rights reserved.
//

import Foundation

class QuestionBank
{
    // Creating an array that will hold questions
    var list = [Question]()
    
    init()
    {
        //creating an item property that will hold the question and answer
        let item = Question(textQuestion: "Valentine day is banned in Saudi Arabia", correctAnswer: true)
        list.append(item)
        
        list.append(Question(textQuestion: "A slug\'s blood is green.", correctAnswer: true))
        list.append(Question(textQuestion: "Approximately one quarter of human bones are in the feet.", correctAnswer: true))
        
        list.append(Question(textQuestion: "The total surface area of two human lungs is approximately 70 square metres.", correctAnswer: true))
        
        list.append(Question(textQuestion: "In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.", correctAnswer: true))
        
        list.append(Question(textQuestion: "In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.", correctAnswer: false))
        
        list.append(Question(textQuestion: "It is illegal to pee in the Ocean in Portugal.", correctAnswer: true))
        
        list.append(Question(textQuestion: "You can lead a cow down stairs but not up stairs.", correctAnswer: false))
        
        list.append(Question(textQuestion: "Google was originally called \"Backrub\".", correctAnswer: true))
        
        list.append(Question(textQuestion: "Buzz Aldrin\'s mother\'s maiden name was \"Moon\".", correctAnswer: true))
        
        list.append(Question(textQuestion: "The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.", correctAnswer: false))
        
        list.append(Question(textQuestion: "No piece of square dry paper can be folded in half more than 7 times.", correctAnswer: false))
        
        list.append(Question(textQuestion: "Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.", correctAnswer: true))
    }
}
