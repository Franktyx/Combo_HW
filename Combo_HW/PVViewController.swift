//
//  PVViewController.swift
//  Combo_HW
//
//  Created by jingjing qu on 5/28/15.
//  Copyright (c) 2015 TYX. All rights reserved.
//

import UIKit

class PVViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    private let screenWidth = UIScreen.mainScreen().bounds.width
    private let screenHeight = UIScreen.mainScreen().bounds.height
    
    var sign: UILabel!
    var button: UIButton!
    
    var pickerView: UIPickerView!
    var amount = ""
    
    let objects = [["students", "teachers", "doctors"], ["ipads", "iphones", "macbooks"], ["Tesla", "Benz"], ["books", "pens"], ["apples", "pears"]]

    override func viewDidLoad() {
        
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(red: 0.95, green: 0.95, blue: 0.95, alpha: 0.9)
        self.sign = UILabel(frame: CGRect(x: 0.0, y: 0.0, width: self.screenWidth, height: 60.0))
        self.sign.textAlignment = .Center
        self.sign.text = "Please choose an amount:"
        self.sign.backgroundColor = UIColor.yellowColor()
        self.view.addSubview(self.sign)
        
        self.pickerView = UIPickerView(frame: CGRect(x: 0.0, y: 100.0, width: self.screenWidth, height: 300.0))
        self.pickerView.delegate = self
        self.pickerView.dataSource = self
        self.pickerView.backgroundColor = UIColor.whiteColor()
        self.view.addSubview(self.pickerView)
        
        self.amount = String(1) + " students"
        
        self.button = UIButton(frame: CGRect(x: 100.0, y: 400.0, width: 80.0, height: 80.0))
        self.button.backgroundColor = UIColor.whiteColor()
        self.button.layer.cornerRadius = 0.5 * button.bounds.size.width
        self.button.setTitle("return", forState: UIControlState.Normal)
        self.button.setTitleColor(UIColor(red: 0.1, green: 0.1, blue: 0.8, alpha: 1.0), forState: UIControlState.Normal)
        self.button.addTarget(self, action: "returnPrev:", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(self.button)

    }
    
    func returnPrev(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 2
    }

    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0{
            return 5
        } else {
            return self.objects[self.pickerView.selectedRowInComponent(0)].count
        }
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        if component == 0 {
            return String(row + 1)
        } else {
            return self.objects[self.pickerView.selectedRowInComponent(0)][row]
        }
        
    }
    
    func pickerView(pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusingView view: UIView!) -> UIView {
        
        if component == 0 {
            let newView = UIView()
            newView.sizeToFit()
            let colorMat = [UIColor.redColor(), UIColor.greenColor(), UIColor.blueColor(), UIColor.cyanColor(), UIColor.magentaColor()]
            newView.backgroundColor = colorMat[row]
            newView.layer.cornerRadius = 7.0
            newView.layer.borderColor = UIColor.whiteColor().CGColor
            newView.layer.borderWidth = 5.0
            newView.clipsToBounds = true
            
            let label = UILabel(frame: CGRectMake(10.0, 10.0, self.screenWidth / 2, 30.0))
            label.text = String(row + 1)
            label.textColor = UIColor.blackColor()
            label.textAlignment = .Center
            newView.addSubview(label)
            
            return newView
            
        }
            let label = UILabel()
            label.sizeToFit()
            label.text = self.objects[self.pickerView.selectedRowInComponent(0)][row]
            label.textAlignment = .Center
            return label
        
    }
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if component == 0 {
            self.pickerView.reloadComponent(1)
            self.amount = String(self.pickerView.selectedRowInComponent(0) + 1) + " " + self.objects[self.pickerView.selectedRowInComponent(0)][0]
        } else {
            self.amount = String(self.pickerView.selectedRowInComponent(0) + 1) + " " + self.objects[self.pickerView.selectedRowInComponent(0)][row]
        }
    }
    
    func pickerView(pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 50.0
    }
    
    }

























