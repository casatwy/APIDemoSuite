//
//  Callback.DemoSuitePageAPIViewController.extension.swift
//  APIDemoSuite
//
//  Created by casa on 2018/9/27.
//  Copyright © 2018 casa. All rights reserved.
//

import CTNetworkingSwift

extension DemoSuitePageAPIViewController : CTNetworkingBaseAPIManagerCallbackDelegate {
    func requestDidSuccess(_ apiManager: CTNetworkingBaseAPIManager) {
        print("success")
    }
    
    func requestDidFailed(_ apiManager: CTNetworkingBaseAPIManager) {
        print("fail")
    }
}
