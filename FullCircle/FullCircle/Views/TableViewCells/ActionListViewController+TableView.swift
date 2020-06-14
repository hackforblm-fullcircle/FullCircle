//
//  ActionListViewController+TableView.swift
//  FullCircle
//
//  Created by Sunni Tang on 6/13/20.
//  Copyright © 2020 FullCircle. All rights reserved.
//

import UIKit

extension ActionListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return actions.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "actionListCell", for: indexPath) as! ActionListTableViewCell
        let action = actions[indexPath.row]
        
        cell.actionNameLabel.text = action.name
        cell.orgNameLabel.text = action.organization.name
        //TODO: Update image based on action type
        cell.actionTypeImageView.image = UIImage(named: action.organization.logoString)!
        
        switch action.isSaved {
        case true:
            cell.saveActionButton.setBackgroundImage(UIImage(systemName: "star.circle.fill"), for: .normal)
        default:
            cell.saveActionButton.setBackgroundImage(UIImage(systemName: "star.circle"), for: .normal)
        }
        
        
        cell.saveAction = {
            let index = allActions.firstIndex(where: { $0.name == action.name } )
            allActions[index!].isSaved = allActions[index!].isSaved ? false : true
            print("saved button pressed for \(allActions[index!].name). Currently saved: \(allActions[index!].isSaved)")
        }
        
        
        return cell
    }
    
}

extension ActionListViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let actionDetailVC = ActionDetailViewController()
        let thisAction = actions[indexPath.row]
        actionDetailVC.action = thisAction
        navigationController?.pushViewController(actionDetailVC, animated: true)
    }
    
}

