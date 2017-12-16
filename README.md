# Automation Guild: Quiz App

This is demo app created for the XCUITest Demo in the [Automation Guild Conference 2018](https://automationguild.com/)

# Pre-requisite

* macOS Sierra +
* Xcode 9 +

# Feature

This app has following features which is written in Gherkin format

```
Feature: Automation Guild Quiz app

  As a Automation Guild Conference Attendee
  I want to complete a quiz
  So that I can test my learnings


Scenario: Complete Quiz with all answers as True
  Given I Launched Automation Guild Quiz app
  Then I Should see initial state of Quiz
  When I complete Quiz with all answers as True
  Then Quiz should restart

Scenario: Complete Quiz with all answers as False
    Given I Launched Automation Guild Quiz app
    Then I Should see initial state of Quiz
    When I complete Quiz with all answers as False
    Then Quiz should restart






```





# Usage

Clone or download this project on your local machine and follow the instructions from the Conference session.
