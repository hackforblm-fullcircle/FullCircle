//
//  ActionListViewController+Buttons.swift
//  FullCircle
//
//  Created by Sunni Tang on 6/13/20.
//  Copyright © 2020 FullCircle. All rights reserved.
//

import UIKit

extension ActionListViewController {
    @objc func levelButtonPressed(button: UIButton) {
        switch button.tag {
        case 0:
            actions = allActions
        case 1:
            actions = allActions.filter { $0.engagementLevel == .easy }
        case 2:
            actions = allActions.filter { $0.engagementLevel == .medium }
        case 3:
            actions = allActions.filter { $0.engagementLevel == .hard }
        default:
            break
        }
    }
    
    @objc func filterButtonPressed() {
        let filterVC = FilterViewController()
        self.present(filterVC, animated: true, completion: nil)
    }
}
