//
//  CountDownClockTests.swift
//  Countdown
//
//  Created by Daniele Spagnolo on 08/02/15.
//  Copyright (c) 2015 spagosx. All rights reserved.
//

import UIKit
import XCTest

class CountDownClockTests: XCTestCase {

    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }

    func testReturnsCorrectTimeInterval() {
        let dayAfterTomorrow = NSDate(timeIntervalSinceNow: 172800)
        let countDown = CountDownClock.countDownToDate(dayAfterTomorrow)
        XCTAssertEqualWithAccuracy(countDown, 172800, 0.1)
    }

}
