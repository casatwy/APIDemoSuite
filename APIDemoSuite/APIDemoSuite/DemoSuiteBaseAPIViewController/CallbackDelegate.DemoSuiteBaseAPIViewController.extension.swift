//
//  CallbackDelegate.DemoSuiteBaseAPIViewController.extension.swift
//  APIDemoSuite
//
//  Created by casa on 2018/9/27.
//  Copyright © 2018 casa. All rights reserved.
//

import UIKit
import CTNetworkingSwift

extension DemoSuiteBaseAPIViewController : CTNetworkingBaseAPIManagerCallbackDelegate {
    public func requestDidSuccess(_ apiManager: CTNetworkingBaseAPIManager) {
        let logString = apiManager.response?.logString()
        DemoSuiteResultView.config(content: logString ?? "", view: view)
    }
    
    public func requestDidFailed(_ apiManager: CTNetworkingBaseAPIManager) {
        let logString = apiManager.response?.logString()
        DemoSuiteResultView.config(content: logString ?? "", view: view)
    }
}
