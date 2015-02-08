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

    let presenter = Presenter()
    let mockView = MockView()
    let mockInteractor = MockInteractor()
    
    override func setUp() {
        super.setUp()
        presenter.view = mockView
        presenter.interactor = mockInteractor
    }
    
    override func tearDown() {
        super.tearDown()
    }

    func testAsksForCurrentDate() {
        presenter.pickedDate()
        XCTAssertTrue(mockView.currentPickedDateCalled)
    }
    
    func testAskForCountdownStart() {
        presenter.startDidtap()
        XCTAssertTrue(mockInteractor.startCountDownCalled)
    }
}
