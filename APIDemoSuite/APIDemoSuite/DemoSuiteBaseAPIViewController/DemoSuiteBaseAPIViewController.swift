//
//  DemoSuiteBaseAPIViewController.swift
//  APIDemoSuite
//
//  Created by casa on 2018/9/27.
//  Copyright © 2018 casa. All rights reserved.
//

import UIKit
import CTNetworkingSwift

open class DemoSuiteBaseAPIViewController: UIViewController {
    public weak var paramSource : CTNetworkingBaseAPIManagerParamSource? = nil
    public weak var child : DemoSuiteBaseAPIViewControllerChild? = nil
    var apiManager = CTNetworkingBaseAPIManager()
    
    lazy var tableView : UITableView = {
        let _tableView = UITableView(frame: .zero, style: .plain)
        _tableView.delegate = self
        _tableView.dataSource = self
        _tableView.tableFooterView = UIView()
        _tableView.register(DemoSuiteAPIManagerTableViewCell.self, forCellReuseIdentifier: DemoSuiteAPIManagerTableViewCell.identifier)
        return _tableView
    }()
    
    public struct DataSourceKey {
        public static let APIManagerTitle = "title"
        public static let APIManagerClass = "class"
    }
}

public protocol DemoSuiteBaseAPIViewControllerChild : CTNetworkingBaseAPIManagerParamSource {
    var dataSource : [[String:Any]] { get }
}
