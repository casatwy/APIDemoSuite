//
//  EventResponse.ResultView.extension.swift
//  APIDemoSuite
//
//  Created by casa on 2018/9/27.
//  Copyright © 2018 casa. All rights reserved.
//

import UIKit

extension DemoSuiteResultView {
    @objc func didRecognizedTapGesture(_ tapGesture:UITapGestureRecognizer) {
        UIView.animate(withDuration: 0.3, animations: {
            self.alpha = 0.0
        }) { isFinished in
            if isFinished {
                self.removeFromSuperview()
            }
        }
    }
}
