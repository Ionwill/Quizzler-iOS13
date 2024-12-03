//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
    @IBOutlet weak var scoreLabel: UILabel!
    
    
    var quizBrain = QuizBrain()
    var userAnswer = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        progressBar.progress = quizBrain.getProgress()
        scoreLabel.text = "Score: 0"
        
        updateUI()
    }
    
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        //True or False
        let userAnswer = sender.currentTitle!
        let userGotItRight = quizBrain.checkAnswer(userAnswer)
        
        if userGotItRight{
            print("Right")
            sender.backgroundColor = UIColor.green
        }else{
            print("Wrong")
            sender.backgroundColor = UIColor.red
        }
        
        quizBrain.nextQuestion()
        
        //adds +1 to the score each time the user gets a question right
        scoreLabel.text = quizBrain.getScore(answer: quizBrain.checkAnswer(userAnswer))
        
        //Update Progress bar
        progressBar.progress = quizBrain.getProgress()
        
        //Since this is in the button pressed function it updates the question everytime the button is pressed
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2){
            self.updateUI()
        }
    }
    
    
    //function to update question with new questionNumber
    func updateUI(){
        questionLabel.text = quizBrain.getQuestionText()
//        progressBar.progress = quizBrain.getProgress()
//        scoreLabel.text = quizBrain.getScore(answer: quizBrain.checkAnswer(userAnswer))
        trueButton.backgroundColor = UIColor.clear
        falseButton.backgroundColor = UIColor.clear
        }
    
    



/*
 
 variable that gives user a random question
    questionNumber = Int.random(in: 0...2)
 
 
 */
}
