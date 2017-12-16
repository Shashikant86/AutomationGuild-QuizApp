//
//  ViewController.swift
//  AutomationGuild
//
//  Created by Shashikant Jagtap on 16/12/2017.
//  Copyright © 2017 Shashikant Jagtap. All rights reserved.
//

import UIKit
import PKHUD


class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var progressBar: UIView!
    @IBOutlet weak var progressLabel: UILabel!
    
    @IBAction func restartQuiz(_ sender: Any) {
        startOver()
    }
   
    
    let allQuestions = QuestionBank()
    var pickedAnswer : Bool = false
    var questionNumber : Int = 0
    var score : Int = 0
    

    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    

    @IBAction func answerPressed(_ sender: AnyObject) {
        
        if sender.tag == 1 {
            pickedAnswer = true
        }
            
        else if sender.tag == 2 {
            pickedAnswer = false
        }
        
        checkAnswer()
        
        questionNumber = questionNumber + 1
        
        updateUI()
        
    }
    
    func updateUI() {
        
        progressBar.frame.size.width = (view.frame.size.width / 5) * CGFloat(questionNumber)
        
        progressLabel.text = String(questionNumber) + "/5"
        
        scoreLabel.text = "Score: " + String(score)
        
        nextQuestion()
    }
    
    func nextQuestion() {
        
        if questionNumber <= 4 {
            questionLabel.text = allQuestions.list[questionNumber].questionText
        }
        else {
            
            HUD.show(.labeledRotatingImage(image: #imageLiteral(resourceName: "AG"), title: "Quiz Completed.", subtitle: "You Scored \(score) out of 5. Restarting Quiz"))
            
            startOver()
        }
        
    }
    
    func checkAnswer() {
        
        let correctAnswer = allQuestions.list[questionNumber].answer
        
        if correctAnswer == pickedAnswer {
            
            HUD.flash(.success)
            
            score = score + 1
        }
        else {
            
            HUD.flash(.error)
        }
    }
    
    func startOver() {
        
        questionNumber = 0
        score = 0
        updateUI()
        
    }

}

