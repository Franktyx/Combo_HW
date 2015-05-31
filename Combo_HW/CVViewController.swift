//
//  CVViewController.swift
//  Combo_HW
//
//  Created by jingjing qu on 5/28/15.
//  Copyright (c) 2015 TYX. All rights reserved.
//

import UIKit

class CVViewController: UIViewController, UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
    
    var sign: UILabel!
    
    let screenWidth = UIScreen.mainScreen().bounds.width
    let screenHeight = UIScreen.mainScreen().bounds.height
    
    var collectionView: UICollectionView!
    var identifier = "cell"
    var amount = ""
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.whiteColor()
        
        self.sign = UILabel(frame: CGRect(x: 0.0, y: 0.0, width: self.screenWidth, height: 60.0))
        self.sign.textAlignment = .Center
        self.sign.text = "Please choose an amount:"
        self.sign.backgroundColor = UIColor.yellowColor()
        self.view.addSubview(self.sign)
        
        //define the flow layout
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.minimumInteritemSpacing = 20.0
        flowLayout.minimumLineSpacing = 10.0
        flowLayout.sectionInset = UIEdgeInsetsMake(20.0, 20.0, 20.0, 20.0)
        
        self.collectionView = UICollectionView(frame: CGRectMake(0.0, 60.0, self.screenWidth, self.screenHeight - 60.0), collectionViewLayout: flowLayout)
        self.collectionView.backgroundColor = UIColor.whiteColor()
        self.collectionView.delegate = self
        self.collectionView.dataSource = self
        self.collectionView.registerClass(CVCollectionViewCell.classForCoder(), forCellWithReuseIdentifier: self.identifier)
        self.view.addSubview(self.collectionView)
        
        
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = self.collectionView.dequeueReusableCellWithReuseIdentifier(self.identifier, forIndexPath: indexPath) as! CVCollectionViewCell
        cell.label.text = String(indexPath.item + 1)
        return cell
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        
        let myLayout = collectionViewLayout as! UICollectionViewFlowLayout
        
        let myWidth = (self.screenWidth - myLayout.minimumInteritemSpacing - myLayout.sectionInset.left - myLayout.sectionInset.right) / 2
        println(myWidth)
        return CGSizeMake(myWidth, myWidth)
    }
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        self.amount = String(indexPath.item + 1)
        self.dismissViewControllerAnimated(true, completion: {self.collectionView.deselectItemAtIndexPath(indexPath, animated: true)})
    }
    
    

    }












