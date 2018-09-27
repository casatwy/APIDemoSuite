//
//  PublicMethods.ResultView.extension.swift
//  APIDemoSuite
//
//  Created by casa on 2018/9/27.
//  Copyright © 2018 casa. All rights reserved.
//

import UIKit
import SwiftHandyFrame

extension DemoSuiteResultView {
    public class func show(view:UIView) {
        let instanceView = DemoSuiteResultView()
        instanceView.alpha = 0
        view.addSubview(instanceView)
        instanceView.ct_fill()
        instanceView.ct_setInnerTopGap(64, shouldResize: true)
        UIView.animate(withDuration: 0.3) {
            instanceView.alpha = 1
        }
    }
    
    public class func config(content:String, view:UIView) {
        for (_, subview) in view.subviews.enumerated() {
            guard let resultView = subview as? DemoSuiteResultView else {
                continue
            }
            
            resultView.textView.text = content
            resultView.activityIndicatorView.stopAnimating()
            UIView.animate(withDuration: 0.3) {
                resultView.layoutSubviews()
            }
            break
        }
    }
}
