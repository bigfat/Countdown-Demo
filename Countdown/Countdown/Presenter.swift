//
//  Presenter.swift
//  Countdown
//
//  Created by Daniele Spagnolo on 04/02/15.
//  Copyright (c) 2015 spagosx. All rights reserved.
//

import UIKit

class Presenter: NSObject, InteractorDelegate {

    var view: View!
    
    var interactor: Interactor!
    
    func startDidtap() {
        interactor.startCountdown()
    }
    
    func pickedDate() -> NSDate {
        let date = view.currentPickedDate()
        return NSDate()
    }
    
    func updateCountdown(countdown: NSTimeInterval) {
        
    }
    
}
