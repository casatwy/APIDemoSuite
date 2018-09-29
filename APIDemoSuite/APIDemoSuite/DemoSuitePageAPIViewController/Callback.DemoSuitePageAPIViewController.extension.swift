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
        guard let apiManager = apiManager as? CTNetworkingAPIManagerPagable else { return }
        statusLabel.text = "\(apiManager.currentPageNumber + 1)/\(apiManager.totalCount ?? -1)"
        let logString = apiManager.response?.logString()
        DemoSuiteResultView.config(content: logString ?? "", view: view)
    }
    
    func requestDidFailed(_ apiManager: CTNetworkingBaseAPIManager) {
        guard let apiManager = apiManager as? CTNetworkingAPIManagerPagable else { return }
        statusLabel.text = "\(apiManager.currentPageNumber + 1)/\(apiManager.totalCount ?? -1)"
        let logString = apiManager.response?.logString()
        DemoSuiteResultView.config(content: logString ?? "", view: view)
    }
}
