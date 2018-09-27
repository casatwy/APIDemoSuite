//
//  DemoSuitePageAPIViewController.swift
//  APIDemoSuite
//
//  Created by casa on 2018/9/27.
//  Copyright © 2018 casa. All rights reserved.
//

import UIKit
import CTNetworkingSwift

class DemoSuitePageAPIViewController: UIViewController {
    
    public var apiManager = CTNetworkingBaseAPIManager()
    
    let statusLabel : UILabel = {
        let _label = UILabel(frame: .zero)
        _label.text = "..."
        _label.textColor = UIColor.blue
        _label.textAlignment = .center
        return _label
    }()
    
    let loadFirstPageButton : UIButton = {
        let _loadFirstPageButton = UIButton(type: .system)
        _loadFirstPageButton.addTarget(self, action: #selector(didTappedLoadFirstPageButton(_:)), for: .touchUpInside)
        _loadFirstPageButton.setTitle("First Page", for: .normal)
        return _loadFirstPageButton
    }()
    
    let loadNextPageButton : UIButton = {
        let _loadNextPageButton = UIButton(type: .system)
        _loadNextPageButton.addTarget(self, action: #selector(didTappedLoadNextPageButton(_:)), for: .touchUpInside)
        _loadNextPageButton.setTitle("Next Page", for: .normal)
        return _loadNextPageButton
    }()
}
