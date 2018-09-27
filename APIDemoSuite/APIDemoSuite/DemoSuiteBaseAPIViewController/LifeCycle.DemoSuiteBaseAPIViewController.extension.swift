//
//  LifeCycle.DemoSuiteBaseAPIViewController.extension.swift
//  APIDemoSuite
//
//  Created by casa on 2018/9/27.
//  Copyright © 2018 casa. All rights reserved.
//

import UIKit
import CTNetworkingSwift

extension DemoSuiteBaseAPIViewController {
    convenience init() {
        self.init()
        guard let _self = self as? CTNetworkingBaseAPIManagerParamSource else {
            assert(false)
            return
        }
        paramSource = _self
    }
    
    open override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(tableView)
    }
    
    open override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        tableView.ct_fill()
    }
}
