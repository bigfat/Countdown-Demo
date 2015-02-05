//
//  ViewController.swift
//  Countdown
//
//  Created by Daniele Spagnolo on 01/02/15.
//  Copyright (c) 2015 spagosx. All rights reserved.
//

import UIKit
import XCTest

class ViewControllerTests: XCTestCase {
    
    var viewController: ViewController!
    
    override func setUp() {
        super.setUp()
        
        let storyBoard = UIStoryboard(name: "Main", bundle: NSBundle(forClass: self.dynamicType))
        viewController = storyBoard.instantiateInitialViewController() as ViewController
        let view = viewController.view
    }
    
    override func tearDown() {
        super.tearDown()
        
        viewController = nil
    }
    
    func testHasDatePickerConnected() {
        XCTAssertNotNil(viewController.datePicker, "Should have a datePicker")
    }
    
    func testDatePickerHasAction() {
        let actions = viewController.datePicker?.actionsForTarget(viewController, forControlEvent: .ValueChanged) as? [String]
        
        if let actions_ = actions {
            let hasAction = contains(actions!, "datePickerPickedDate:")
            XCTAssertTrue(hasAction)
        } else {
            XCTAssertTrue(false)
        }
    }
    
    func testHasStartButton() {
        XCTAssertNotNil(viewController.startButton, "Should have a startButotn")
    }
    
    func testStartButtonHasAction() {
        let actions = viewController.startButton?.actionsForTarget(viewController, forControlEvent: .TouchUpInside) as? [String]
        
        if let actions_ = actions {
            let hasAction = contains(actions!, "startButtonDidTap:")
            XCTAssertTrue(hasAction)
        } else {
            XCTAssertTrue(false)
        }
    }
    
    func testPassStart() {
        let mockPresenter = MockPresenter()
        viewController.presenter = mockPresenter
        viewController.startButtonDidTap(viewController.startButton!)
        XCTAssertTrue(mockPresenter.startButtonTapped)
    }
    
    func testConformsToViewProtocol() {
        let conforms = viewController.respondsToSelector(Selector("currentPickedDate"))
        XCTAssertTrue(conforms)
    }
    
    func testSendsBackCorrectDate() {
        viewController.datePicker?.date = NSDate(timeIntervalSince1970: 0)
        viewController.datePickerPickedDate(viewController.datePicker!)
        let testDate = viewController.currentPickedDate()
        XCTAssertEqual(testDate, NSDate(timeIntervalSince1970: 0))
    }
    
}
