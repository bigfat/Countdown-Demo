//
//  MockInteractor.swift
//  Countdown
//
//  Created by Daniele Spagnolo on 07/02/15.
//  Copyright (c) 2015 spagosx. All rights reserved.
//

import UIKit

class MockInteractor : Interactor {
    
    var startCountDownCalled = false
    
    override func startCountdown() {
        startCountDownCalled = true
    }
    
}