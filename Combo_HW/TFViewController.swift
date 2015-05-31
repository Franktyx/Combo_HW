//
//  TFViewController.swift
//  Combo_HW
//
//  Created by jingjing qu on 5/29/15.
//  Copyright (c) 2015 TYX. All rights reserved.
//

import UIKit

class TFViewController: UIViewController, UITextFieldDelegate {
    
    let screenWidth = UIScreen.mainScreen().bounds.width
    let screenHeight = UIScreen.mainScreen().bounds.height
    
    var textField: UITextField!
    var sign: UILabel!
    var button: UIButton!
    var amount = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(red: 0.83, green: 0.88, blue: 0.95, alpha: 1.0)
        
        self.sign = UILabel(frame: CGRect(x: 0.0, y: 0.0, width: self.screenWidth, height: 60.0))
        self.sign.textAlignment = .Center
        self.sign.text = "Please input an amount:"
        self.sign.backgroundColor = UIColor(red: 0.83, green: 0.88, blue: 0.95, alpha: 1.0)

        self.view.addSubview(self.sign)

        
        self.textField = UITextField(frame: CGRect(x: 10.0, y: 70.0, width: self.screenWidth - 20.0, height: 400.0))
        self.textField.backgroundColor = UIColor.whiteColor()
        self.textField.borderStyle = UITextBorderStyle.Line
        self.view.addSubview(self.textField)
        
        self.button = UIButton(frame: CGRect(x: self.screenWidth / 2 - 30.0, y: 500.0, width: 60.0, height: 60.0))
        self.button.layer.cornerRadius = 0.5 * self.button.bounds.size.width
        self.button.setTitle("return", forState: UIControlState.Normal)
        self.button.setTitleColor(UIColor(red: 0.27, green: 0.81, blue: 0.96, alpha: 1.0), forState: UIControlState.Normal)
        self.button.backgroundColor = UIColor.whiteColor()
        self.view.addSubview(self.button)
        self.button.addTarget(self, action: "returnPrev:", forControlEvents: UIControlEvents.TouchUpInside)
        
        
    }
    
    func returnPrev(sender: AnyObject){
        self.amount = self.textField.text
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    

    }
