//
//  DemoSuiteResultView.swift
//  APIDemoSuite
//
//  Created by casa on 2018/9/27.
//  Copyright © 2018 casa. All rights reserved.
//

import UIKit

class DemoSuiteResultView: UIView {
    let textView : UITextView = {
        let _textView = UITextView()
        _textView.textColor = UIColor.black
        _textView.font = UIFont.systemFont(ofSize: 12)
        _textView.text = ""
        _textView.isEditable = false
        _textView.layer.cornerRadius = 4
        _textView.isUserInteractionEnabled = true
        return _textView
    }()
    
    let tapGestureRecognizer : UITapGestureRecognizer = {
        let _tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(didRecognizedTapGesture(_:)))
        return _tapGestureRecognizer
    }()
    
    let activityIndicatorView : UIActivityIndicatorView = {
        let _activityIndicatorView = UIActivityIndicatorView(style: .whiteLarge)
        _activityIndicatorView.hidesWhenStopped = true
        _activityIndicatorView.color = UIColor.gray
        _activityIndicatorView.backgroundColor = UIColor.white
        _activityIndicatorView.layer.cornerRadius = 4
        _activityIndicatorView.startAnimating()
        return _activityIndicatorView
    }()
    
    
}
