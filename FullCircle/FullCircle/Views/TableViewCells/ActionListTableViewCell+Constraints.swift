//
//  ActionListTableViewCell+Constraints.swift
//  FullCircle
//
//  Created by Sunni Tang on 6/13/20.
//  Copyright © 2020 FullCircle. All rights reserved.
//

import UIKit

extension ActionListTableViewCell {
    
    func addSubviews() {
        self.addSubview(saveActionButton)
        self.addSubview(actionTypeImageView)
        self.addSubview(actionNameLabel)
        self.addSubview(orgNameLabel)
    }
    
    func addConstraints() {
        setSaveActionButtonConstraints()
        setActionTypeImageViewConstraints()
        setActionNameLabelConstraints()
        setOrgNameLabelConstraints()
    }
    
    private func setSaveActionButtonConstraints() {
        saveActionButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            saveActionButton.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            saveActionButton.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -10),
            saveActionButton.widthAnchor.constraint(equalToConstant: 30),
            saveActionButton.heightAnchor.constraint(equalToConstant: 30)
        ])
    }
    
    private func setActionTypeImageViewConstraints() {
        actionTypeImageView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            actionTypeImageView.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            actionTypeImageView.rightAnchor.constraint(equalTo: saveActionButton.leftAnchor, constant: -5),
            actionTypeImageView.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.8),
            actionTypeImageView.widthAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.8)

        ])
    }
    
    private func setActionNameLabelConstraints() {
        actionNameLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            actionNameLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 10),
            actionNameLabel.rightAnchor.constraint(equalTo: actionTypeImageView.leftAnchor, constant: -10),
            actionNameLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 5),
            actionNameLabel.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.6)
        ])
    }
    
    private func setOrgNameLabelConstraints() {
        orgNameLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            orgNameLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 10),
            orgNameLabel.rightAnchor.constraint(equalTo: actionTypeImageView.leftAnchor, constant: -10),
            orgNameLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -5),
            orgNameLabel.topAnchor.constraint(equalTo: actionNameLabel.bottomAnchor, constant: 5),
        ])
    }
    
}