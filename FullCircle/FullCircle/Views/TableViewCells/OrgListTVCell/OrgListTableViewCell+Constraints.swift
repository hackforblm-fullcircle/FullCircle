//
//  OrgListTableViewCell+Constraints.swift
//  FullCircle
//
//  Created by Sunni Tang on 6/13/20.
//  Copyright © 2020 FullCircle. All rights reserved.
//

import UIKit

extension OrgListTableViewCell {
    func addSubviews() {
        self.addSubview(infoView)
        infoView.addSubview(orgLogoImageView)
        infoView.addSubview(orgNameLabel)
        infoView.addSubview(orgDetailLabel)
    }
    
    func addConstraints() {
        setInfoViewConstraints()
        setOrgLogoImageViewConstraints()
        setOrgNameLabelConstraints()
        setOrgDetailLabelConstraints()
    }
    
    private func setInfoViewConstraints() {
        infoView.translatesAutoresizingMaskIntoConstraints = false
           
           NSLayoutConstraint.activate([
               infoView.centerYAnchor.constraint(equalTo: self.centerYAnchor),
               infoView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 20),
               infoView.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -20),
               infoView.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.8),
           ])
    }
    
    private func setOrgLogoImageViewConstraints() {
        orgLogoImageView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            orgLogoImageView.centerYAnchor.constraint(equalTo: infoView.centerYAnchor),
            orgLogoImageView.rightAnchor.constraint(equalTo: infoView.rightAnchor, constant: -20),
            orgLogoImageView.heightAnchor.constraint(equalTo: infoView.heightAnchor, multiplier: 0.8),
            orgLogoImageView.widthAnchor.constraint(equalTo: infoView.heightAnchor, multiplier: 0.8)
        ])
    }
    
    private func setOrgNameLabelConstraints() {
        orgNameLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            orgNameLabel.leftAnchor.constraint(equalTo: infoView.leftAnchor, constant: 20),
            orgNameLabel.rightAnchor.constraint(equalTo: orgLogoImageView.leftAnchor, constant: -20),
            orgNameLabel.topAnchor.constraint(equalTo: infoView.topAnchor, constant: 20),
            orgNameLabel.heightAnchor.constraint(equalToConstant: 60)
        ])
    }
    
    private func setOrgDetailLabelConstraints() {
        orgDetailLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            orgDetailLabel.leftAnchor.constraint(equalTo: infoView.leftAnchor, constant: 20),
            orgDetailLabel.rightAnchor.constraint(equalTo: orgLogoImageView.leftAnchor, constant: -20),
            orgDetailLabel.bottomAnchor.constraint(equalTo: infoView.bottomAnchor, constant: -20),
            orgDetailLabel.topAnchor.constraint(equalTo: orgNameLabel.bottomAnchor, constant: 10),
        ])
    }
    
}
