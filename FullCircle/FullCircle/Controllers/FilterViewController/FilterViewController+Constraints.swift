//
//  FilterViewController+Constraints.swift
//  FullCircle
//
//  Created by Sunni Tang on 10/29/20.
//  Copyright © 2020 FullCircle. All rights reserved.
//

import UIKit

extension FilterViewController {
    func addSubviews() {
        view.addSubview(filterTableView)
        view.addSubview(applyButton)
    }
    
    func addConstraints() {
        setFilterTableViewConstraints()
        setApplyButtonConstraints()
    }
    
    private func setFilterTableViewConstraints() {
        filterTableView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            filterTableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            filterTableView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor),
            filterTableView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor),
            filterTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
    
    private func setApplyButtonConstraints() {
        applyButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            applyButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -50),
            applyButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            applyButton.widthAnchor.constraint(equalToConstant: 80),
            applyButton.heightAnchor.constraint(equalToConstant: 30)
        ])
    }
}

