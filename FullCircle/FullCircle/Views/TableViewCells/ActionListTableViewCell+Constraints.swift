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
        self.addSubview(infoView)
        self.addSubview(noActionLabel)
        self.addSubview(saveActionButton)
        infoView.addSubview(actionTypeImageView)
        infoView.addSubview(actionNameLabel)
        infoView.addSubview(withLabel)
        infoView.addSubview(orgNameLabel)
    }
    
    func addConstraints() {
        setNoActionLabel()
        setSaveActionButtonConstraints()
        setInfoViewConstraints()
        setActionTypeImageViewConstraints()
        setActionNameLabelConstraints()
        setWithLabelConstraints()
        setOrgNameLabelConstraints()
    }
    
    private func setNoActionLabel() {
        noActionLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            noActionLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            noActionLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            noActionLabel.topAnchor.constraint(equalTo: self.topAnchor),
            noActionLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 30),
        ])
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
    
    private func setInfoViewConstraints() {
        infoView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            infoView.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            infoView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 10),
            infoView.rightAnchor.constraint(equalTo: saveActionButton.leftAnchor, constant: -10),
            infoView.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.8),
        ])
    }
    
    private func setActionTypeImageViewConstraints() {
        actionTypeImageView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            actionTypeImageView.centerYAnchor.constraint(equalTo: infoView.centerYAnchor),
            actionTypeImageView.rightAnchor.constraint(equalTo: infoView.rightAnchor, constant: -20),
            actionTypeImageView.heightAnchor.constraint(equalTo: infoView.heightAnchor, multiplier: 0.5),
            actionTypeImageView.widthAnchor.constraint(equalTo: infoView.heightAnchor, multiplier: 0.5)

        ])
    }
    
    private func setActionNameLabelConstraints() {
        actionNameLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            actionNameLabel.leftAnchor.constraint(equalTo: infoView.leftAnchor, constant: 10),
            actionNameLabel.rightAnchor.constraint(equalTo: actionTypeImageView.leftAnchor, constant: -20),
            actionNameLabel.topAnchor.constraint(equalTo: infoView.topAnchor, constant: 5),
            actionNameLabel.heightAnchor.constraint(equalTo: infoView.heightAnchor, multiplier: 0.5)
        ])
    }
    
    private func setWithLabelConstraints() {
        withLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            withLabel.leftAnchor.constraint(equalTo: infoView.leftAnchor, constant: 10),
            withLabel.rightAnchor.constraint(equalTo: actionTypeImageView.leftAnchor, constant: -20),
            withLabel.topAnchor.constraint(equalTo: actionNameLabel.bottomAnchor, constant: 0),
            withLabel.heightAnchor.constraint(equalToConstant: 15)
        ])
    }
    
    private func setOrgNameLabelConstraints() {
        orgNameLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            orgNameLabel.leftAnchor.constraint(equalTo: infoView.leftAnchor, constant: 10),
            orgNameLabel.rightAnchor.constraint(equalTo: actionTypeImageView.leftAnchor, constant: -20),
            orgNameLabel.bottomAnchor.constraint(equalTo: infoView.bottomAnchor, constant: -10),
            orgNameLabel.topAnchor.constraint(equalTo: withLabel.bottomAnchor),
        ])
    }
    
}
