//
//  FilterViewController+TableView.swift
//  FullCircle
//
//  Created by Sunni Tang on 10/1/20.
//  Copyright © 2020 FullCircle. All rights reserved.
//

import UIKit

extension FilterViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.row {
        case 0:
            // Cause
            let causeCell = UITableViewCell()
            causeCell.backgroundColor = .red
            return causeCell
        case 1:
            // Action Type
            let actionCell = UITableViewCell()
            actionCell.backgroundColor = .black
            return actionCell
        case 2:
            // Date
            let dateCell = UITableViewCell()
            dateCell.backgroundColor = .blue
            return dateCell
        default:
            return UITableViewCell()
        }
    }
    
    
}


extension FilterViewController: UITableViewDelegate {
    
}
