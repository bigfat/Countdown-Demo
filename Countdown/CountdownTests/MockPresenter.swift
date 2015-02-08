//
//  MockPresenter.swift
//  Countdown
//
//  Created by Daniele Spagnolo on 04/02/15.
//  Copyright (c) 2015 spagosx. All rights reserved.
//

import UIKit

class MockPresenter: Presenter {
    
    var startButtonTapped = false
    
    override func startDidtap() {
        startButtonTapped = true
    }
    
    var pickedDateCalled = false
    
    override func pickedDate() -> NSDate {
        pickedDateCalled = true
        return NSDate(timeIntervalSinceNow: 86400)
    }
    
    var updateCountdownCalled = false
    var countDownArgument: NSTimeInterval = 0
    
    override func updateCountdown(countdown: NSTimeInterval) {
        updateCountdownCalled = true
        countDownArgument = countdown
    }
    
}
