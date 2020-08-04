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
    lazy var searchBar = FCSearchBar()
    
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
    var organizations = [Organization]() {
        didSet {
            self.orgListTableView.reloadData()
        }
    }
    
    //MARK: - Lifecycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = FCDesign.medGrey
        self.navigationItem.title = "FullCircle"
        
        addSubviews()
        addConstraints()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        getOrganizations()
    }

    //MARK: Private Methods
    private func getOrganizations() {
        FirestoreService.manager.getAllOrganizations { (result) in
            switch result {
            case .failure(let error):
                print("error getting organizations: \(error)")
            case .success(let organizations):
                self.organizations = organizations
            }
        }
    }
    
    

}
