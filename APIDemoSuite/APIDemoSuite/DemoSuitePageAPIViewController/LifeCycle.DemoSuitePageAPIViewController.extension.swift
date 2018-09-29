//
//  LifeCycle.DemoSuitePageAPIViewController.extension.swift
//  APIDemoSuite
//
//  Created by casa on 2018/9/27.
//  Copyright © 2018 casa. All rights reserved.
//

import Foundation

extension DemoSuitePageAPIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        view.addSubview(statusLabel)
        view.addSubview(loadFirstPageButton)
        view.addSubview(loadNextPageButton)
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        loadFirstPageButton.sizeToFit()
        loadFirstPageButton.ct_setCenterEqualToView(view)
        
        statusLabel.sizeToFit()
        statusLabel.ct_fillWidth()
        statusLabel.ct_setBottomGap(50, fromView: loadFirstPageButton)
        
        loadNextPageButton.sizeToFit()
        loadNextPageButton.ct_setCenterXEqualToView(view)
        loadNextPageButton.ct_setTopGap(50, fromView: loadFirstPageButton)
    }
}
