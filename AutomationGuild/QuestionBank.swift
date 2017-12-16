//
//  QuestionBank.swift
//  AutomationGuild
//
//  Created by Shashikant Jagtap on 16/12/2017.
//  Copyright © 2017 Shashikant Jagtap. All rights reserved.
//

import Foundation

class QuestionBank {
    
    var list = [Question]()
    
    init() {
    
        let item = Question(text: "Automation Guild is great Conference.", correctAnswer: true)
        list.append(item)
        list.append(Question(text: "Third-Party Tools are great for iOS Test Automation", correctAnswer: false))
        list.append(Question(text: "XCUITest is the future of iOS UI Testing ", correctAnswer: true))
        
        list.append(Question(text: "Apple is investing a lot in Test Framework: XCTest", correctAnswer: true))
        
        list.append(Question(text: "I learned a lot in Automation Guild Conference", correctAnswer: true))
        
    }
    
}



