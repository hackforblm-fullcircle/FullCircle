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
    var orgImageView: UIImageView = {
        let imageView = UIImageView()
        //For testing:
        imageView.image = UIImage(named: "BlackLivesMatterLogo")
        return imageView
    }()
    
    var orgNameLabel = UILabel()
    
    var orgDescriptionTextView = UITextView()
    
    var contactUsLabel: UILabel = {
        let label = UILabel()
        label.text = "Contact Us"
        return label
    }()
    
    var callButton = UIButton()
    var emailButton = UIButton()
    var websiteButton = UIButton()
    var donateButton = UIButton()
    var messageButton = UIButton()
    
    //TODO: Add buttons to stackview
    var buttonStackView = UIStackView()
    
    var actionsLabel: UILabel = {
        let label = UILabel()
        label.text = "Actions"
        return label
    }()
    
    //TODO: Set up tableview
    var orgActionsTableView = UITableView()
    
    //MARK: - Internal Properties
    var organization: Organization?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    private func populateOrgInfo(organization: Organization) {
        //TODO: assign orgImageView image with image retrieved from organization.imageURL
        orgNameLabel.text = organization.name
        orgDescriptionTextView.text = organization.description
        
    }
    
    //TODO: Assign functionality to buttons
}
