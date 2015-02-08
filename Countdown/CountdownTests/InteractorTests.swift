//
//  InteractorTests.swift
//  Countdown
//
//  Created by Daniele Spagnolo on 04/02/15.
//  Copyright (c) 2015 spagosx. All rights reserved.
//

import UIKit
import XCTest

class InteractorTests: XCTestCase {

    let interactor = Interactor()
    let mockDelegate = MockPresenter()
    
    override func setUp() {
        super.setUp()
        interactor.delegate = mockDelegate
    }
    
    override func tearDown() {
        super.tearDown()
    }

    func testAskPickedDateToDelegate() {
        interactor.startCountdown()
        XCTAssertTrue(mockDelegate.pickedDateCalled)
    }
    
    func testSendCountdownWhenPrompted() {
        interactor.startCountdown()
        XCTAssertTrue(mockDelegate.updateCountdownCalled)
    }
    
    func testSendCorrectCountdownTimeInterval() {
        let date = mockDelegate.pickedDate()
        let countDownInterval = CountDownClock.countDownToDate(date)
        interactor.startCountdown()
        XCTAssertEqualWithAccuracy(countDownInterval, mockDelegate.countDownArgument, 0.1)
    }
    
}
