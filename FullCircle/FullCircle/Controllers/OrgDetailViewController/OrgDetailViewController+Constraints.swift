//
//  OrgDetailViewController+Constraints.swift
//  FullCircle
//
//  Created by Sunni Tang on 8/4/20.
//  Copyright © 2020 FullCircle. All rights reserved.
//

import UIKit

extension OrgDetailViewController {
    func addSubviews() {
        view.addSubview(orgImageView)
        view.addSubview(orgNameLabel)
        view.addSubview(orgDescriptionTextView)
        view.addSubview(contactUsLabel)
        view.addSubview(actionsLabel)
        view.addSubview(callButton)
        view.addSubview(emailButton)
        view.addSubview(websiteButton)
        view.addSubview(donateButton)
        view.addSubview(messageButton)
        view.addSubview(buttonStackView)
        view.addSubview(orgActionsTableView)
    }
    
    func addConstraints() {
        setOrgImageViewConstraints()
        
    }
    
    
    private func setOrgImageViewConstraints() {
        
    }
}
