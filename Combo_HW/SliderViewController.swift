//
//  SliderViewController.swift
//  Combo_HW
//
//  Created by jingjing qu on 5/29/15.
//  Copyright (c) 2015 TYX. All rights reserved.
//

import UIKit

class SliderViewController: UIViewController {
    
    var sign: UILabel!
    var slider: UISlider!
    var stepper: UIStepper!
    var label: UILabel!
    var button: UIButton!
    
    let screenWidth = UIScreen.mainScreen().bounds.width
    let screenHeight = UIScreen.mainScreen().bounds.height
    var amount = "0"
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor(red: 0.83, green: 0.88, blue: 0.95, alpha: 1.0)

        
        self.sign = UILabel(frame: CGRect(x: 0.0, y: 0.0, width: self.screenWidth, height: 60.0))
        self.sign.textAlignment = .Center
        self.sign.text = "Please choose an amount:"
        self.sign.backgroundColor = UIColor(red: 0.83, green: 0.88, blue: 0.95, alpha: 1.0)

        self.view.addSubview(self.sign)
        
        self.slider = UISlider(frame: CGRect(x: self.screenWidth / 2  - 150.0, y: 100.0, width: 300.0, height: 100.0))
        self.slider.backgroundColor = UIColor(red: 0.83, green: 0.88, blue: 0.95, alpha: 1.0)
        self.slider.maximumValue = 5.0
        self.slider.minimumValue = 0.0
        self.slider.value = 0.0
        self.slider.addTarget(self, action: "changeSlider:", forControlEvents: UIControlEvents.ValueChanged)
        self.view.addSubview(self.slider)
        
        self.stepper = UIStepper(frame: CGRect(x: self.screenWidth / 2 - 50.0, y: 200.0, width: 100.0, height: 10.0))
        self.stepper.backgroundColor = UIColor.whiteColor()
        self.stepper.value = 0.0
        self.stepper.maximumValue = 5.0
        self.stepper.minimumValue = 0.0
        self.stepper.stepValue = 1.0
        self.stepper.addTarget(self, action: "changeStepper:", forControlEvents: UIControlEvents.ValueChanged)
        self.view.addSubview(self.stepper)
        
        self.label = UILabel(frame: CGRect(x: self.screenWidth / 2 - 30.0, y: 240.0, width: 60.0, height: 30.0))
        self.label.backgroundColor = UIColor.whiteColor()
        self.label.text = "0"
        self.label.textColor = UIColor.blueColor()
        self.label.textAlignment = .Center
        self.view.addSubview(self.label)
        
        
        self.button = UIButton(frame: CGRect(x: self.screenWidth / 2 - 30.0, y: 500.0, width: 60.0, height: 60.0))
        self.button.layer.cornerRadius = 0.5 * self.button.bounds.size.width
        self.button.setTitle("return", forState: UIControlState.Normal)
        self.button.setTitleColor(UIColor(red: 0.27, green: 0.81, blue: 0.96, alpha: 1.0), forState: UIControlState.Normal)
        self.button.backgroundColor = UIColor.whiteColor()
        self.view.addSubview(self.button)
        self.button.addTarget(self, action: "returnPrev:", forControlEvents: UIControlEvents.TouchUpInside)


    }
    
    func returnPrev(sender: AnyObject){
        self.amount = String(stringInterpolationSegment: self.slider.value)
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    func changeSlider(sender: AnyObject) {
        if slider.value < 0.5 {
            slider.value = 0.0
            label.text = "0"
            stepper.value = 0.0
        } else if slider.value < 1.5 {
            slider.value = 1.0
            label.text = "1"
            stepper.value = 1.0
        } else if slider.value < 2.5 {
            slider.value = 2.0
            label.text = "2"
            stepper.value = 2.0
        } else if slider.value < 3.5 {
            slider.value = 3.0
            label.text = "3"
            stepper.value = 3.0
        } else if slider.value < 4.5 {
            slider.value = 4.0
            label.text = "4"
            stepper.value = 4.0
        } else {
            slider.value = 5.0
            label.text = "5"
            stepper.value = 5.0
        }
    }
    
    func changeStepper(sender: AnyObject) {
        switch stepper.value {
        case 0:
            slider.value = 0.0
            label.text = "0"
        case 1:
            slider.value = 1.0
            label.text = "1"
        case 2:
            slider.value = 2.0
            label.text = "2"
        case 3:
            slider.value = 3.0
            label.text = "3"
        case 4:
            slider.value = 4.0
            label.text = "4"
        case 5:
            slider.value = 5.0
            label.text = "5"
        default:
            slider.value = 0.0
            label.text = "0"
        }
    }

    }
