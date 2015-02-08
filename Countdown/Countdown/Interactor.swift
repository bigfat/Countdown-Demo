//
//  Interactor.swift
//  Countdown
//
//  Created by Daniele Spagnolo on 04/02/15.
//  Copyright (c) 2015 spagosx. All rights reserved.
//

import UIKit

protocol InteractorDelegate: class {
    func pickedDate() -> NSDate
    func updateCountdown(countdown: NSTimeInterval)
}

class Interactor: NSObject {

    var delegate: InteractorDelegate?
    
    func startCountdown() {
        sendCountdown()
    }
    
    func sendCountdown() {
        if let date = delegate?.pickedDate() {
            let countDown = CountDownClock.countDownToDate(date)
            delegate?.updateCountdown(countDown)
        }
    }
}
