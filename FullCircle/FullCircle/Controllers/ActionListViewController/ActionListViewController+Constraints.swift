//
//  ActionListViewController+Constraints.swift
//  FullCircle
//
//  Created by Sunni Tang on 6/13/20.
//  Copyright © 2020 FullCircle. All rights reserved.
//

import UIKit

extension ActionListViewController {
    func addSubviews() {
        view.addSubview(searchBar)
        view.addSubview(levelLabel)
        view.addSubview(allButton)
        view.addSubview(easyButton)
        view.addSubview(mediumButton)
        view.addSubview(hardButton)
        view.addSubview(difficultyButtonStackView)
        view.addSubview(actionListTableView)
    }
    
    func addConstraints() {
        setSearchBarConstraints()
        setLevelLabelConstraints()
        setDifficultyButtonStackViewConstraints()
        setActionListTableViewConstraints()
    }
    
    
    private func setSearchBarConstraints() {
        searchBar.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            searchBar.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            searchBar.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor),
            searchBar.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            searchBar.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    private func setLevelLabelConstraints() {
        levelLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            levelLabel.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            levelLabel.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor),
            levelLabel.topAnchor.constraint(equalTo: searchBar.bottomAnchor),
            levelLabel.heightAnchor.constraint(equalToConstant: 30)
        ])
    }
    
    private func setDifficultyButtonStackViewConstraints() {
        allButton.translatesAutoresizingMaskIntoConstraints = false
        easyButton.translatesAutoresizingMaskIntoConstraints = false
        mediumButton.translatesAutoresizingMaskIntoConstraints = false
        hardButton.translatesAutoresizingMaskIntoConstraints = false
        difficultyButtonStackView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            difficultyButtonStackView.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            difficultyButtonStackView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor),
            difficultyButtonStackView.topAnchor.constraint(equalTo: levelLabel.bottomAnchor),
            difficultyButtonStackView.heightAnchor.constraint(equalToConstant: 60)
        ])
    }
    
    private func setActionListTableViewConstraints() {
        actionListTableView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            actionListTableView.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            actionListTableView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor),
            actionListTableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            actionListTableView.topAnchor.constraint(equalTo: difficultyButtonStackView.bottomAnchor),
        ])
    }

}
