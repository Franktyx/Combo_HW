//
//  DPViewController.swift
//  Combo_HW
//
//  Created by jingjing qu on 5/28/15.
//  Copyright (c) 2015 TYX. All rights reserved.
//

import UIKit

class DPViewController: UIViewController {

    var sign: UILabel!
    var datePicker: UIDatePicker!
    var date = ""
    var dateLabel: UILabel!
    var button: UIButton!
    
    let screenWidth = UIScreen.mainScreen().bounds.width
    let screenHeight = UIScreen.mainScreen().bounds.height
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(red: 0.73, green: 0.8, blue: 0.77, alpha: 1.0)
        
        self.sign = UILabel(frame: CGRect(x: 0.0, y: 0.0, width: self.screenWidth, height: 60.0))
        self.sign.textAlignment = .Center
        self.sign.text = "Please choose a time:"
        self.sign.backgroundColor = UIColor.yellowColor()
        self.view.addSubview(self.sign)
        
        self.dateLabel = UILabel(frame: CGRect(x: self.screenWidth / 2 - 100.0, y: 400.0, width: 200.0, height: 100.0))
        self.dateLabel.backgroundColor = UIColor(red: 0.73, green: 0.8, blue: 0.77, alpha: 1.0)

        self.dateLabel.textAlignment = .Center
        self.view.addSubview(self.dateLabel)
        
        self.button = UIButton(frame: CGRect(x: self.screenWidth / 2 - 30.0, y: 500.0, width: 60.0, height: 60.0))
        self.button.backgroundColor = UIColor(red: 0.27, green: 0.8, blue: 0.96, alpha: 1.0)
        self.button.layer.cornerRadius = 0.5 * self.button.bounds.size.width
        self.button.setTitle("return", forState: UIControlState.Normal)
        self.button.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
        self.button.addTarget(self, action: "returnPrev:", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(self.button)
        
        self.datePicker = UIDatePicker(frame: CGRect(x: 0.0, y: 100.0, width: self.screenWidth , height: 300.0))
        self.datePicker.backgroundColor = UIColor.whiteColor()
        self.datePicker.datePickerMode = UIDatePickerMode.DateAndTime
        self.view.addSubview(self.datePicker)
        self.datePicker.addTarget(self, action: "dateChanged:", forControlEvents: UIControlEvents.ValueChanged)

    }
    
    func returnPrev(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    func dateChanged(datePicker: UIDatePicker) {
        var dateFormatter = NSDateFormatter()
        
        dateFormatter.dateStyle = NSDateFormatterStyle.ShortStyle
        dateFormatter.timeStyle = NSDateFormatterStyle.ShortStyle
        
        var strDate = dateFormatter.stringFromDate(datePicker.date)
        dateLabel.text = strDate
        self.date = strDate
    }
    
}
