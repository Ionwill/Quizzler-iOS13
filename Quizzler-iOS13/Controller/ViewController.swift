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
    
    var quizBrain = QuizBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        var questionNumber = 0
        
        progressBar.progress = 0
        
//        updateUI()
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
        
        
        //Since this is in the button pressed function it updates the question everytime the button is pressed
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2){
            self.updateUI()
        }
        
        
    }
    
    //function to update question with new questionNumber
    func updateUI(){
        questionLabel.text = quizBrain.getQuestionText()
        
        trueButton.backgroundColor = UIColor.clear
        falseButton.backgroundColor = UIColor.clear
        
        progressBar.progress = quizBrain.getProgress()
        }
    
    



/*
 
 variable that gives user a random question
    questionNumber = Int.random(in: 0...2)
 
 
 */
}
