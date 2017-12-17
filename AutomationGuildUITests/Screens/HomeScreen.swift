//
//  QuizHomeScreen.swift
//  AutomationGuildUITests
//
//  Created by Shashikant Jagtap on 16/12/2017.
//  Copyright © 2017 Shashikant Jagtap. All rights reserved.
//

import XCTest

enum Homescreen {
    case initalScore
    case intialQuestion
    case trueButton
    case falseButton
    
    var element: XCUIElement {
        switch self {
        case .initalScore:
            return XCUIApplication().staticTexts["Score: 0"]
        case .intialQuestion:
            return XCUIApplication().staticTexts["0/5"]
        case .trueButton:
            return XCUIApplication().buttons["True"]
        case .falseButton:
            return XCUIApplication().buttons["False"]
        }
    }
    
    static func confirmIntialState() {
        XCTAssert(Homescreen.initalScore.element.exists)
        XCTAssert(Homescreen.intialQuestion.element.exists)
    }
    
    static func completeQuizWithTrueAnswers() {
        for _ in 1...5 {
            Homescreen.trueButton.element.tap()
        }
    }
    
    static func completeQuizWithFalseAnswers() {
        for _ in 1...5 {
            Homescreen.falseButton.element.tap()
        }
    }
}
