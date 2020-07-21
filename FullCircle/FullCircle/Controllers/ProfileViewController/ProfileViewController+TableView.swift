//
//  ProfileViewController+TableView.swift
//  FullCircle
//
//  Created by Sunni Tang on 6/13/20.
//  Copyright © 2020 FullCircle. All rights reserved.
//

import UIKit

extension ProfileViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if savedActions.isEmpty {
            return 1
        } else {
            return savedActions.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "actionListCell", for: indexPath) as! ActionListTableViewCell
        
        if savedActions.isEmpty {
            cell.noActionLabel.isHidden = false
            cell.infoView.isHidden = true
            cell.saveActionButton.isHidden = true
            
        } else {
            cell.noActionLabel.isHidden = true
            cell.infoView.isHidden = false
            cell.saveActionButton.isHidden = false
            
            
            let action = savedActions[indexPath.row]
            
            cell.actionNameLabel.text = action.name
            
            // TODO: Refactor to obtain org info from Firebase
//            cell.orgNameLabel.text = action.organizationID.name
//            cell.actionTypeImageView.image = UIImage(named: action.organizationID.logoString)!
//
            switch action.isSaved {
            case true:
                cell.saveActionButton.setBackgroundImage(UIImage(systemName: "star.circle.fill"), for: .normal)
                cell.saveActionButton.tintColor = FCDesign.red
            default:
                cell.saveActionButton.setBackgroundImage(UIImage(systemName: "star.circle"), for: .normal)
                cell.saveActionButton.tintColor = FCDesign.darkGrey
            }
            
            cell.saveAction = {
                let index = allActions.firstIndex(where: { $0.name == action.name } )
                allActions[index!].isSaved = allActions[index!].isSaved ? false : true
                print("saved button pressed for \(allActions[index!].name). Currently saved: \(allActions[index!].isSaved)")
                self.updateUserInfoLabel()
            }
            
        }
        
        return cell
    }
    
    
}

extension ProfileViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if savedActions.isEmpty {
            print("No action to see details for!")
        } else {
            let actionDetailVC = ActionDetailViewController()
            let thisAction = savedActions[indexPath.row]
            actionDetailVC.action = thisAction
            print("Pressed")
            navigationController?.pushViewController(actionDetailVC, animated: true)
        }
    }
    
}
