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
    
    var questionNumber = 0
    
    //create an array of quiz questions
    let quiz = [
        "4 + 2 = 6",
        "5 - 3 > 1",
        "3 + 8 < 10"
        ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        questionNumber = 0
        
        updateUI()
    }
    
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        //variable that keeps track of which question the user is reading
        questionNumber += 1
        print(questionNumber)
        
        //Since this is in the button pressed function it updates the question everytime the button is pressed
        updateUI()
    
    }
    
    //function to update question with new questionNumber
    func updateUI(){
        questionLabel.text = quiz[questionNumber]
    }
    

}


/*
 
 variable that gives user a random question
    questionNumber = Int.random(in: 0...2)
 
 
 */
