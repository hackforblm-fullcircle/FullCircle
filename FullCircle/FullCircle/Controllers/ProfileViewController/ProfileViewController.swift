//
//  ProfileViewController.swift
//  FullCircle
//
//  Created by Sunni Tang on 6/13/20.
//  Copyright © 2020 FullCircle. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {
    //MARK: - UI Objects
    lazy var searchBar = FCSearchBar()
    
    let userNameLabel: FCSubHeaderLabel = {
        let label = FCSubHeaderLabel()
        label.text = "User4BlackLives"
        return label
    }()
    
    lazy var userInfoLabel = FCBodyLabel()
    
    lazy var profilePic: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "ProfilePic")
        return imageView
    }()
    
    lazy var actionListTableView: UITableView = {
        let tableView = UITableView()
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(ActionListTableViewCell.self, forCellReuseIdentifier: "actionListCell")
        tableView.separatorStyle = .none
        tableView.backgroundColor = .clear
        return tableView
    }()
    
    //MARK: - Internal Properties
    
    var savedActions = [Action]()
    
    //TODO: Load saved actions from user data in FB
//    var savedActions = allActions.filter { $0.isSaved == true } {
//        didSet {
//            actionListTableView.reloadData()
//        }
//    }
    
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
        actionListTableView.reloadData()
        updateUserInfoLabel()

    }
    
    func updateUserInfoLabel() {
        //TODO: Load saved actions from user data in FB
//        savedActions = allActions.filter { $0.isSaved == true }
        userInfoLabel.text = """
        \(savedActions.count) saved actions
        0 actions taken
        """
    }
}
