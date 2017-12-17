//
//  BDDStyleTest.swift
//  AutomationGuildUITests
//
//  Created by Shashikant Jagtap on 16/12/2017.
//  Copyright © 2017 Shashikant Jagtap. All rights reserved.
//

import XCTest

class BDDStyleTest: XCTestCase, AutomationGuildQuiz {
    
    func testAutomationGuildQuizWithTrueAnswers() {
        givenILaunchAutomationGuildApp()
        thenIShouldSeeInitialStateOfQuiz()
        whenICompleteQuizWithAllAnswersAsTrue()
        thenQuizShouldRestart()
    }
    
    func testAutomationGuildQuizWithFalseAnswers() {
        givenILaunchAutomationGuildApp()
        thenIShouldSeeInitialStateOfQuiz()
        whenICompleteQuizWithAllAnswersAsFalse()
        thenQuizShouldRestart()
    }

}

