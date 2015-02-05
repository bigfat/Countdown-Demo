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
    
}
