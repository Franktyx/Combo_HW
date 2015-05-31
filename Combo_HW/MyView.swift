//
//  MyView.swift
//  Combo_HW
//
//  Created by jingjing qu on 5/28/15.
//  Copyright (c) 2015 TYX. All rights reserved.
//

import UIKit

class MyView: UIView {

    override func drawRect(rect: CGRect) {
        let c = UIGraphicsGetCurrentContext()
        CGContextAddRect(c, CGRectMake(10, 10, 130, 130))
        CGContextSetStrokeColorWithColor(c , UIColor.redColor().CGColor)
        CGContextStrokePath(c)
    }

}
