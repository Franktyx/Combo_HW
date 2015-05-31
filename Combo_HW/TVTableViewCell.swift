//
//  TVTableViewCell.swift
//  Combo_HW
//
//  Created by jingjing qu on 5/28/15.
//  Copyright (c) 2015 TYX. All rights reserved.
//

import UIKit

class TVTableViewCell: UITableViewCell {
    
    let screenWidth = UIScreen.mainScreen().bounds.width
    let screenHeight = UIScreen.mainScreen().bounds.height
    
    var label: UILabel!

    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.label = UILabel(frame: CGRect(x: self.screenWidth / 2 - 50.0, y: 20.0, width: 100.0, height: 50.0))
        self.label.textAlignment = .Center
        
        addSubview(self.label)
        
    }
    
    
}
