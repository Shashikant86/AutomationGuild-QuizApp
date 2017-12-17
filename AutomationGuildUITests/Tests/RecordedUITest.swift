//
//  AutomationGuildUITests.swift
//  AutomationGuildUITests
//
//  Created by Shashikant Jagtap on 16/12/2017.
//  Copyright © 2017 Shashikant Jagtap. All rights reserved.
//

import XCTest

class RecordedUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testXCUITestRecorder() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        let app = XCUIApplication()
        app/*@START_MENU_TOKEN@*/.staticTexts["Question"]/*[[".staticTexts[\"Automation Guild is great Conference.\"]",".staticTexts[\"Question\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app.staticTexts["0/5"].tap()
        
        let score0StaticText = app.staticTexts["Score: 0"]
        score0StaticText.tap()
        app.children(matching: .window).element(boundBy: 0).children(matching: .other).element.children(matching: .other).element(boundBy: 2).children(matching: .other).element.tap()
        
        let trueButton = app.buttons["True"]
        trueButton.tap()
        trueButton.tap()
        trueButton.tap()
        trueButton.tap()
        trueButton.tap()
        score0StaticText.tap()
        XCTAssert(score0StaticText.exists)
    }
    
    // Note: This test will work but but not maintainable. 
    
}
