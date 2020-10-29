//
//  FilterViewController.swift
//  FullCircle
//
//  Created by Sunni Tang on 9/29/20.
//  Copyright © 2020 FullCircle. All rights reserved.
//

import UIKit

class FilterViewController: UIViewController {
    
    //MARK: - UI Objects
    lazy var filterTableView: UITableView = {
        let tableView = UITableView()
        tableView.dataSource = self
        tableView.delegate = self
        tableView.separatorStyle = .none
        return tableView
    }()
    
    lazy var applyButton: UIButton = {
        let button = UIButton()
        button.setTitle("Apply", for: .normal)
        button.backgroundColor = FCDesign.fadedBlue
        button.isUserInteractionEnabled = true
        button.addTarget(self, action: #selector(applyButtonPressed), for: .touchUpInside)
        return button
    }()
    
    //TODO: create cancel + apply buttons in nav bar
    
    //MARK: - Lifecycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()

        addSubviews()
        addConstraints()
    }
    
    //MARK: - Objective-C Functions
    @objc func applyButtonPressed() {
        print("apply button pressed")
    }

    //MARK: - Private Functions
    

}
