//
//  ViewController.swift
//  Countdown
//
//  Created by Daniele Spagnolo on 01/02/15.
//  Copyright (c) 2015 spagosx. All rights reserved.
//

import UIKit

class ViewController: UIViewController, View {

    @IBOutlet var datePicker: UIDatePicker?
    @IBOutlet var startButton: UIButton?
    
    var presenter: Presenter! = nil
    
    var currentSelectedDate: NSDate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func datePickerPickedDate(sender: AnyObject) {
        currentSelectedDate = datePicker?.date
    }
    
    @IBAction func startButtonDidTap(sender: AnyObject) {
        presenter.startDidtap()
    }
    
    //MARK: View Protocol
    
    func currentPickedDate() -> NSDate {
        return currentSelectedDate!
    }
    
}

