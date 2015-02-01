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
    
    
}
