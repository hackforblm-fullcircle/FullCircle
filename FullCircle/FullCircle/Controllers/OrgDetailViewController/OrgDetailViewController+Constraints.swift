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
        view.addSubview(orgDetailView)
        view.addSubview(actionsLabel)
        view.addSubview(orgActionsTableView)
    }
    
    func addConstraints() {
        setOrgDetailViewConstraints()
        setActionsLabelConstraints()
        setOrgActionsTableViewConstraints()
        
    }
            
    private func setOrgDetailViewConstraints() {
        orgDetailView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            orgDetailView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            orgDetailView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor),
            orgDetailView.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor)
        ])
    }
    
    private func setActionsLabelConstraints() {
        actionsLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            actionsLabel.topAnchor.constraint(equalTo: orgDetailView.bottomAnchor, constant: 20),
            actionsLabel.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 20),
            actionsLabel.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            actionsLabel.heightAnchor.constraint(equalToConstant: 30)
        ])
    }

    
    private func setOrgActionsTableViewConstraints() {
        orgActionsTableView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            orgActionsTableView.topAnchor.constraint(equalTo: actionsLabel.bottomAnchor),
            orgActionsTableView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor),
            orgActionsTableView.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            orgActionsTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
}
