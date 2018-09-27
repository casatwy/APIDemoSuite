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
        textView.addGestureRecognizer(tapGestureRecognizer)
        
        addSubview(textView)
        addSubview(activityIndicatorView)
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
    }
}
