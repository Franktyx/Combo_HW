//
//  CVCollectionViewCell.swift
//  Combo_HW
//
//  Created by jingjing qu on 5/28/15.
//  Copyright (c) 2015 TYX. All rights reserved.
//

import UIKit

class CVCollectionViewCell: UICollectionViewCell {
    
    var label: UILabel!
    let shadowView = UIView(frame: CGRectMake(2.5, 2.5, 150.0, 150.0))
    let superView = UIView(frame: CGRectMake(0.0, 0.0, 155.0, 155.0))
    let view = MyView(frame: CGRectMake(00.0, 00.0, 150.0, 150.0))
    
    required init(coder aDecoder: NSCoder){
        super.init(coder: aDecoder)
        
    }
    
    override init(frame: CGRect){
        super.init(frame:frame)
        
        shadowView.layer.shadowColor = UIColor.blackColor().CGColor
        shadowView.layer.shadowOffset = CGSizeZero
        shadowView.layer.shadowOpacity = 0.5
        
        view.backgroundColor = UIColor.whiteColor()
        view.layer.cornerRadius = 10.0
        view.layer.borderColor = UIColor.grayColor().CGColor
        view.layer.borderWidth = 0.5
        view.clipsToBounds = true
        superView.backgroundColor = UIColor.whiteColor()
        shadowView.addSubview(view)
        superView.addSubview(shadowView)
        addSubview(superView)
        
        
        self.backgroundColor = UIColor.whiteColor()
        
        self.label = UILabel(frame: CGRectMake(50.0, 50.0, 60.0, 60.0))
        self.label.textAlignment = .Center
        self.label.font = UIFont.boldSystemFontOfSize(25.0)
        addSubview(self.label)
    }
    
}













