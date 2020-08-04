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
    var orgImageView = UIImage()
    
    var orgNameLabel = UILabel()
    
    var orgDescriptionTextView = UITextView()
    
    var contactUsLabel = UILabel()
    
    var callButton = UIButton()
    
    var emailButton = UIButton()
    
    var websiteButton = UIButton()
    
    var messageButton = UIButton()
    
    var donateButton = UIButton()
    
    var actionsLabel = UILabel()
    
    var orgActionsTableView = UITableView()
    
    //MARK: - Internal Properties
    var organization: Organization?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

}
