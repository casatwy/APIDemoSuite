//
//  UITableView.BaseAPIViewController.extension.swift
//  APIDemoSuite
//
//  Created by casa on 2018/9/27.
//  Copyright © 2018 casa. All rights reserved.
//

import UIKit
import CTNetworkingSwift

extension DemoSuiteBaseAPIViewController : UITableViewDelegate, UITableViewDataSource {
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return tableView.dequeueReusableCell(withIdentifier: DemoSuiteAPIManagerTableViewCell.identifier, for: indexPath)
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        guard let dataSource = child?.dataSource else { return 0 }
        return dataSource.count
    }
    
    public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let child = child else { return }
        guard let Class = child.dataSource[indexPath.row][DemoSuiteBaseAPIViewController.DataSourceKey.APIManagerClass] as? NSObject.Type else { return }
        guard let instance = Class.init() as? CTNetworkingBaseAPIManager else { return }

        apiManager = instance
        apiManager.paramSource = child
        
        guard let apiChild = apiManager.child else { return }
        if apiChild.isPagable {
            let viewController = DemoSuitePageAPIViewController()
            viewController.apiManager = apiManager
            apiManager.delegate = viewController
            navigationController?.pushViewController(viewController, animated: true)
        } else {
            apiManager.delegate = self
            apiManager.loadData()
            DemoSuiteResultView.show(view: view)
        }
    }
    
    public func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 55
    }
    
    public func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        guard let dataSource = child?.dataSource else { return }
        guard let apiCell = cell as? DemoSuiteAPIManagerTableViewCell else { return }
        guard let title = dataSource[indexPath.row][DemoSuiteBaseAPIViewController.DataSourceKey.APIManagerTitle] as? String else { return }
        guard let clazz = dataSource[indexPath.row][DemoSuiteBaseAPIViewController.DataSourceKey.APIManagerClass] else { return }
        
        let classString = String(describing: clazz)
        apiCell.config(title: title, detail: classString)
    }
}
