//
//  ViewController.swift
//  Quizzler
//
//  Created by Navpreet Kaur on 22/02/2018.
//

import UIKit

class ViewController: UIViewController {
    
    //Place your instance variables here
    
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var progressBar: UIView!
    @IBOutlet weak var progressLabel: UILabel!
    var userAnswer : Bool = false
    var questionNumber : Int = 0
    var score : Int = 0
    //Object of QuestionBank class
    let allQuestions = QuestionBank()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nextQuestion()
    }


    @IBAction func answerPressed(_ sender: AnyObject) {
        if sender.tag == 1{
            userAnswer = true
            
        }
        else
        {
            userAnswer = false
        }
        checkAnswer()
        questionNumber = questionNumber + 1
        nextQuestion()
        
    }
    
    
    func updateUI() {
        scoreLabel.text = "Score : \(score)"
        progressLabel.text = "\(questionNumber + 1)/13"
        progressBar.frame.size.width = (view.frame.size.width / 13) * CGFloat(questionNumber + 1)
    }
    

    func nextQuestion() {
        if questionNumber <= 12
        {
            questionLabel.text = allQuestions.list[questionNumber].question
            updateUI()
        }
        else{
            // display an alert mmessage to the user/
            let alert = UIAlertController(title: "Awesome", message: "You finished the quiz, Do you want to start over?", preferredStyle: .alert)
            let alertAction = UIAlertAction(title: "Restart", style: .default, handler: { (UIAlertAction) in
                self.startOver()
            })
            
           alert.addAction(alertAction)
            present(alert, animated: true, completion: nil)
        }
        
    }
    
    
    func checkAnswer() {
        
        let correctAnswer = allQuestions.list[questionNumber].answer
        if userAnswer == correctAnswer
        {
            print("you got it")
            score = score + 1
        }
        else{
            print("Wrong")
        }
    }
    
    
    func startOver() {
        questionNumber = 0
        score = 0
        nextQuestion()
    }
    

    
}
