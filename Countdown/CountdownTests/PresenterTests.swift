//
//  PresenterTests.swift
//  Countdown
//
//  Created by Daniele Spagnolo on 04/02/15.
//  Copyright (c) 2015 spagosx. All rights reserved.
//

import UIKit
import XCTest

class PresenterTests: XCTestCase {

    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }

    func testAsksForCurrentDate() {
        let presenter = Presenter()
        let mockView = MockView()
        presenter.view = mockView;
        presenter.startDidtap()
        XCTAssertTrue(mockView.currentPickedDateCalled)
    }
}
