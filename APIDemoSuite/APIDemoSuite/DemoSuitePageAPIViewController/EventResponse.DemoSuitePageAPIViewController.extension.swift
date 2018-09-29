//
//  EventResponse.DemoSuitePageAPIViewController.extension.swift
//  APIDemoSuite
//
//  Created by casa on 2018/9/27.
//  Copyright © 2018 casa. All rights reserved.
//

import UIKit
import CTNetworkingSwift

extension DemoSuitePageAPIViewController {
    @objc func didTappedLoadFirstPageButton(_ button:UIButton) {
        guard let apiManager = apiManager as? CTNetworkingAPIManagerPagable else { return }
        statusLabel.text = "..."
        apiManager.loadData()
        DemoSuiteResultView.show(view: view)
    }
    
    @objc func didTappedLoadNextPageButton(_ button:UIButton) {
        guard let apiManager = apiManager as? CTNetworkingAPIManagerPagable else { return }
        if apiManager.isLastPage == false {
            statusLabel.text = "loading"
            apiManager.loadNextPage()
            DemoSuiteResultView.show(view: view)
        }
    }
}
