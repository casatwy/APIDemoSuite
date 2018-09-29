//
//  LifeCycle.ResultView.extension.swift
//  APIDemoSuite
//
//  Created by casa on 2018/9/27.
//  Copyright © 2018 casa. All rights reserved.
//

import UIKit

extension DemoSuiteResultView {
    convenience init() {
        self.init(frame:.zero)
        backgroundColor = UIColor.lightGray

        addSubview(textView)
        addSubview(activityIndicatorView)
        addSubview(closeButton)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        if textView.text.count == 0 {
            activityIndicatorView.ct_setSize(CGSize(width: 200, height: 200))
            textView.frame = CGRect.zero
        } else {
            activityIndicatorView.frame = CGRect.zero
            textView.ct_setSize(CGSize(width: ct_width()-20, height: ct_height()-20))
        }
        
        activityIndicatorView.ct_setCenterEqualToView(self)
        textView.ct_setCenterEqualToView(self)
        
        closeButton.ct_setSize(CGSize(width: 50, height: 50))
        closeButton.ct_setInnerRightGap(30, shouldResize: false)
        closeButton.ct_setInnerTopGap(30, shouldResize: false)
    }
}
