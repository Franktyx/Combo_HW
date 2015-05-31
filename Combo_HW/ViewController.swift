//
//  ViewController.swift
//  Combo_HW
//
//  Created by jingjing qu on 5/28/15.
//  Copyright (c) 2015 TYX. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let screenWidth = UIScreen.mainScreen().bounds.width
    let screenHeight = UIScreen.mainScreen().bounds.height
    
    var table: UITableView!
    let identifier = "cell"
    
    var amount = ""
    var date = ""
    var selectIndex = -1
    
    //the view controllers in the cells
    var tableView = TVViewController()
    var collectionView = CVViewController()
    var pickerView = PVViewController()
    var datePicker = DPViewController()
    var textField = TFViewController()
    var slider = SliderViewController()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.table = UITableView(frame: CGRect(x: 0.0, y: 0.0, width: self.screenWidth, height: self.screenHeight))
        self.table.rowHeight = 80.0
        
        self.table.delegate = self
        self.table.dataSource = self
        self.table.registerClass(TableViewCell.classForCoder(), forCellReuseIdentifier: self.identifier)
        self.view.addSubview(self.table)
        
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 8
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = self.table.dequeueReusableCellWithIdentifier(self.identifier, forIndexPath: indexPath) as! TableViewCell
        
        
        switch indexPath.row {
        case 0:
            cell.label.text = "Table View"
        case 1:
            cell.label.text = "Collection View"
        case 2:
            cell.label.text = "Picker View"
        case 3:
            cell.label.text = "Date Picker"
        case 4:
            cell.label.text = "Text Field"
        case 5:
            cell.label.text = "Slider"
        case 6:
            cell.label.text = "Amount: " + self.amount
        
        case 7:
            cell.label.text = "Date: " + self.date
        default:
            cell.label.text = "Others"
            
        }
        
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        self.selectIndex = indexPath.row
        
        switch indexPath.row {
         
        case 0 :
            self.presentViewController(self.tableView, animated: true, completion: {tableView.deselectRowAtIndexPath(indexPath, animated: true)})
        case 1:
            self.presentViewController(self.collectionView, animated: true, completion: {tableView.deselectRowAtIndexPath(indexPath, animated: true)})
        case 2:
            self.presentViewController(self.pickerView, animated: true, completion: {tableView.deselectRowAtIndexPath(indexPath, animated: true)})
        case 3:
            self.presentViewController(self.datePicker, animated: true, completion: {tableView.deselectRowAtIndexPath(indexPath, animated: true)})
        case 4:
            self.presentViewController(self.textField, animated: true, completion: {tableView.deselectRowAtIndexPath(indexPath, animated: true)})
        case 5:
            self.presentViewController(self.slider, animated: true, completion: {tableView.deselectRowAtIndexPath(indexPath, animated: true)})
            
        default:
            println("this is default")
        
        }
    }
    
    override func viewWillAppear(animated: Bool) {
        switch self.selectIndex {
        case 0:
            self.amount = self.tableView.amount
        case 1:
            self.amount = self.collectionView.amount
        case 2:
            self.amount = self.pickerView.amount
        case 3:
            self.date = self.datePicker.date
        case 4:
            self.amount = self.textField.amount
        case 5:
            self.amount = self.slider.amount
        default:
            println("Others")
        }
        
        self.table.reloadData()
        
    }
    

}

