//
//  OrgListViewController.swift
//  FullCircle
//
//  Created by Sunni Tang on 6/12/20.
//  Copyright © 2020 FullCircle. All rights reserved.
//

import UIKit

class OrgListViewController: UIViewController {
    
    //MARK: - UI Objects
    lazy var searchBar: UISearchBar = {
        let searchBar = UISearchBar()
        return searchBar
    }()
    
    lazy var orgListTableView: UITableView = {
        let tableView = UITableView()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(OrgListTableViewCell.self, forCellReuseIdentifier: "orgListCell")
        tableView.separatorStyle = .none
        tableView.backgroundColor = .clear
        return tableView
    }()
    
    //MARK: - Internal Properties
    var organizations = Organization.allOrganizations
    
    //MARK: - Lifecycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = FCDesign.medGrey
        title = "FullCircle"
        
        addSubviews()
        addConstraints()
        
    }
    

}
