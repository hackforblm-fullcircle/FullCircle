//
//  OrgListViewController+TableView.swift
//  FullCircle
//
//  Created by Sunni Tang on 6/13/20.
//  Copyright © 2020 FullCircle. All rights reserved.
//

import UIKit

extension OrgListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return organizations.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "orgListCell", for: indexPath) as! OrgListTableViewCell
        let organization = organizations[indexPath.row]
        
        cell.orgNameLabel.text = organization.name
        cell.orgDetailLabel.text = """
        \(organization.organizationType)
        \(organization.address)
        """

        FirebaseStorageService.manager.getImage(at: organization.imageURL) { (result) in
            switch result {
            case .failure(let error):
                print("error fetching logo image: \(error)")
            case .success(let image):
                cell.orgLogoImageView.image = image
            }
        }
        
        return cell
    }
    
}

extension OrgListViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    
     //Navigation
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let thisOrganization = organizations[indexPath.row]
        
        let vc = OrgDetailViewController()
        vc.organization = thisOrganization
        vc.orgDetailView.orgNameLabel.text = thisOrganization.name
        vc.orgDetailView.orgDescriptionLabel.text = thisOrganization.description
        
        navigationController?.pushViewController(vc, animated: true)
    }
    
}
