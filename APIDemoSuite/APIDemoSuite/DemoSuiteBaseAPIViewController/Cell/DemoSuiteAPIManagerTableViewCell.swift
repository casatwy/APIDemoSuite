//
//  DemoSuiteAPIManagerTableViewCell.swift
//  APIDemoSuite
//
//  Created by casa on 2018/9/27.
//  Copyright © 2018 casa. All rights reserved.
//

import UIKit
import SwiftHandyFrame

class DemoSuiteAPIManagerTableViewCell: UITableViewCell {
    static let identifier = "DemoSuiteAPIManagerTableViewCellIdentifier"
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        guard let _textLabel = textLabel
            , let _detailLabel = detailTextLabel
        else {
            return
        }
        
        _textLabel.ct_setTop(5, shouldResize: false)
        
        _detailLabel.sizeToFit()
        _detailLabel.ct_leftEqualToView(_textLabel)
        _detailLabel.ct_setInnerBottomGap(5, shouldResize: false)
    }
    
    public func config(title:String, detail:String) {
        textLabel?.text = title
        detailTextLabel?.text = detail
        layoutSubviews()
    }
}
