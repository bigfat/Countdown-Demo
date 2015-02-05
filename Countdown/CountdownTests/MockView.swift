//
//  MockView.swift
//  Countdown
//
//  Created by Daniele Spagnolo on 04/02/15.
//  Copyright (c) 2015 spagosx. All rights reserved.
//

import UIKit

class MockView: View {
    
    var currentPickedDateCalled = false
    var presenter: Presenter! = nil

    func currentPickedDate() -> NSDate {
        currentPickedDateCalled = true
        return NSDate()
    }
    
}