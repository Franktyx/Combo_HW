//
//  TVViewController.swift
//  Combo_HW
//
//  Created by jingjing qu on 5/28/15.
//  Copyright (c) 2015 TYX. All rights reserved.
//

import UIKit

class TVViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    let screenWidth = UIScreen.mainScreen().bounds.width
    let screenHeight = UIScreen.mainScreen().bounds.height
    
    var sign: UILabel!
    
    var myTable: UITableView!
    let identifier = "cell"
    
    var amount = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.sign = UILabel(frame: CGRect(x: 0.0, y: 0.0, width: self.screenWidth, height: 60.0))
        self.sign.textAlignment = .Center
        self.sign.text = "Please choose an amount:"
        self.sign.backgroundColor = UIColor.yellowColor()
        self.view.addSubview(self.sign)
        
        self.myTable = UITableView(frame: CGRect(x: 0.0, y: 60.0, width: self.screenWidth, height: self.screenHeight - 60.0))
        self.myTable.rowHeight = 80.0
        self.myTable.delegate = self
        self.myTable.dataSource = self
        self.myTable.registerClass(TVTableViewCell.classForCoder(), forCellReuseIdentifier: self.identifier)
        self.view.addSubview(self.myTable)

    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = self.myTable.dequeueReusableCellWithIdentifier(self.identifier, forIndexPath: indexPath) as! TVTableViewCell
        cell.label.text = String(indexPath.row + 1)
        
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        self.amount = (tableView.cellForRowAtIndexPath(indexPath) as! TVTableViewCell).label.text!
        println(self.amount)
        self.dismissViewControllerAnimated(true
            , completion: {self.myTable.deselectRowAtIndexPath(indexPath, animated: true)})
    
    
    }

    
    
    }
