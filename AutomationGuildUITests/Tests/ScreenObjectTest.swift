//
//  ScreenObjectTest.swift
//  AutomationGuildUITests
//
//  Created by Shashikant Jagtap on 16/12/2017.
//  Copyright © 2017 Shashikant Jagtap. All rights reserved.
//

import XCTest

class QuizHomescreen: XCTestCase {
    
    override func setUp() {
        super.setUp()
        continueAfterFailure = false
        XCUIApplication().launch()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    static let initalScore = XCUIApplication().staticTexts["Score: 0"]
    
    static let initlQuestion = XCUIApplication().staticTexts["0/5"]
    
    static let trueButton = XCUIApplication().buttons["True"]
    
    static let falseButton = XCUIApplication().buttons["False"]
    
    static func confirmInitalStage() {
        XCTAssert(initlQuestion.exists)
        XCTAssert(initalScore.exists)
    }
    
    static func completeQuizWithTrueAnswers() {
        for _ in 1...5 {
            QuizHomescreen.trueButton.tap()
        }
    }
}

class ScreenObjectTest: QuizHomescreen {
    
    func testQuizWithAllAnswersTrue() {
        QuizHomescreen.confirmInitalStage()
        QuizHomescreen.completeQuizWithTrueAnswers()
        QuizHomescreen.confirmInitalStage()
    }
    
}
