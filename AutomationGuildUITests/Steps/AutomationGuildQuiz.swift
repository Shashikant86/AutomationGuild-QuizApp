//
//  AutomationGuildQuiz.swift
//  AutomationGuildUITests
//
//  Created by Shashikant Jagtap on 16/12/2017.
//  Copyright © 2017 Shashikant Jagtap. All rights reserved.
//

import XCTest

protocol AutomationGuildQuiz {
    func testAutomationGuildQuizWithTrueAnswers()
}

extension AutomationGuildQuiz {
    
    func givenILaunchAutomationGuildApp() {
        
        XCTContext.runActivity(named: "Given I Launched Automation Guild Quiz app") { _ in
            XCUIApplication().launch()
        }
    }
    
    func thenIShouldSeeInitialStateOfQuiz() {
        XCTContext.runActivity(named: "Then I Should see initial state of Quiz") { _ in
             Homescreen.confirmIntialState()
        }
    }
    
    func whenICompleteQuizWithAllAnswersAsTrue() {
        
        XCTContext.runActivity(named: "When I complete Quiz with all answers as True") { _ in
            Homescreen.completeQuizWithTrueAnswers()
        }
    }
    
    func whenICompleteQuizWithAllAnswersAsFalse() {
        
        XCTContext.runActivity(named: "When I complete Quiz with all answers as False") { _ in
            Homescreen.completeQuizWithFalseAnswers()
        }
    }
    
    func thenQuizShouldRestart() {
        XCTContext.runActivity(named: "Then Quiz should restart") { _ in
            Homescreen.confirmIntialState()
        }
    }
    
}
