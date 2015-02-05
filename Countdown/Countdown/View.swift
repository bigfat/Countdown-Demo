//
//  View.swift
//  Countdown
//
//  Created by Daniele Spagnolo on 04/02/15.
//  Copyright (c) 2015 spagosx. All rights reserved.
//

import UIKit

protocol View: class {
    
    var presenter: Presenter! {get set}
    
    func currentPickedDate() -> NSDate
    
}