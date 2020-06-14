//
//  TableSource.swift
//  FullCircle
//
//  Created by Aishat Olowoshile on 6/13/20.
//  Copyright © 2020 FullCircle. All rights reserved.
//

import Foundation

import CellDataCoupler

class TableSource: CouplerTableSource {
    
    
    override init(with tableView: UITableView) {
        super.init(with: tableView)
        
        tableView.separatorStyle = .none
        tableView.backgroundColor = .white
        tableView.showsVerticalScrollIndicator = false
        tableView.showsHorizontalScrollIndicator = false
    }

}
