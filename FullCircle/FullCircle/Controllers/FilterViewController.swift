//
//  FilterViewController.swift
//  FullCircle
//
//  Created by Sunni Tang on 9/29/20.
//  Copyright © 2020 FullCircle. All rights reserved.
//

import UIKit

class FilterViewController: UIViewController {
    
    var filterTableView: UITableView = {
        let tableView = UITableView()
        return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setUpFilterTableView()
    }
    

    func setUpFilterTableView() {
        view.addSubview(filterTableView)
        filterTableView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            filterTableView.topAnchor.constraint(equalTo: view.topAnchor),
            filterTableView.leftAnchor.constraint(equalTo: view.leftAnchor),
            filterTableView.rightAnchor.constraint(equalTo: view.rightAnchor),
            filterTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
        

}
