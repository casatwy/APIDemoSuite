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
        guard let service = apiManager.child?.service else { return }
        DemoSuiteResultView.config(content: apiManager.request?.logString(apiName: apiManager.child?.methodName() ?? "", service: service) ?? "", view: view)
    }
    
    public func requestDidFailed(_ apiManager: CTNetworkingBaseAPIManager) {
        guard let service = apiManager.child?.service else { return }
        DemoSuiteResultView.config(content: apiManager.request?.logString(apiName: apiManager.child?.methodName() ?? "", service: service) ?? "", view: view)
    }
}
