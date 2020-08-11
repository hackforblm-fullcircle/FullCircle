//
//  OrgDetailViewController.swift
//  FullCircle
//
//  Created by Sunni Tang on 8/4/20.
//  Copyright © 2020 FullCircle. All rights reserved.
//

import UIKit

class OrgDetailViewController: UIViewController {
    
    //MARK: - UI Objects
    let orgDetailView = OrgDetailView()
    
    var actionsLabel: FCSubHeaderLabel = {
        let label = FCSubHeaderLabel()
        label.text = "Actions"
        return label
    }()
    
    //TODO: Set up tableview
    var orgActionsTableView = UITableView()
    
    //MARK: - Internal Properties
    var organization: Organization!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = FCDesign.medGrey
        self.navigationItem.title = "FullCircle"
        
        addSubviews()
        addConstraints()
    }
    
}
