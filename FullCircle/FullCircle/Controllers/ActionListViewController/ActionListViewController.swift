//
//  ActionListViewController.swift
//  FullCircle
//
//  Created by Sunni Tang on 6/12/20.
//  Copyright © 2020 FullCircle. All rights reserved.
//

import UIKit

class ActionListViewController: UIViewController {
    
    //MARK: - UI Objects
    lazy var searchBar = FCSearchBar()
    
    lazy var levelLabel: FCSubHeaderLabel = {
        let label = FCSubHeaderLabel()
        label.text = "filter by Engagement Level"
        label.textAlignment = .center
        return label
    }()
    
    //TODO: Update temporary icons
    lazy var allButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(systemName: "a.circle"), for: .normal)
//        button.setImage(UIImage(systemName: "a.circle.fill"), for: .selected)
        button.tintColor = FCDesign.lightBlue
        button.tag = 0
        button.addTarget(self, action: #selector(levelButtonPressed(button:)), for: .touchUpInside)
        return button
    }()
    
    lazy var easyButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(systemName: "1.circle"), for: .normal)
//        button.setImage(UIImage(systemName: "1.circle.fill"), for: .selected)
        button.tintColor = FCDesign.lightBlue
        button.tag = 1
        button.addTarget(self, action: #selector(levelButtonPressed(button:)), for: .touchUpInside)
        return button
    }()
    
    lazy var mediumButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(systemName: "2.circle"), for: .normal)
//        button.setImage(UIImage(systemName: "2.circle.fill"), for: .selected)
        button.tintColor = FCDesign.lightBlue
        button.tag = 2
        button.addTarget(self, action: #selector(levelButtonPressed(button:)), for: .touchUpInside)
        return button
    }()
    
    lazy var hardButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(systemName: "3.circle"), for: .normal)
//        button.setImage(UIImage(systemName: "3.circle.fill"), for: .selected)
        button.tintColor = FCDesign.lightBlue
        button.tag = 3
        button.addTarget(self, action: #selector(levelButtonPressed(button:)), for: .touchUpInside)
        return button
    }()
    
    lazy var difficultyButtonStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [allButton, easyButton, mediumButton, hardButton])
        stackView.alignment = .center
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        return stackView
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
    var actions = [Action]() {
        didSet {
            actionListTableView.reloadData()
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
        actionListTableView.reloadData()
    }


}
