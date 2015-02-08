//
//  CountDownClock.swift
//  Countdown
//
//  Created by Daniele Spagnolo on 08/02/15.
//  Copyright (c) 2015 spagosx. All rights reserved.
//

import UIKit

class CountDownClock: NSObject {
 
    class func countDownToDate(date: NSDate) -> NSTimeInterval {
        let now = NSDate()
        let countDown = date.timeIntervalSinceDate(now)
        return countDown
    }
    
}
