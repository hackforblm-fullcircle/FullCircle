//
//  OrgDetailViewController.swift
//  FullCircle
//
//  Created by Aishat Olowoshile on 6/13/20.
//  Copyright © 2020 FullCircle. All rights reserved.
//

import UIKit
import MapKit
import CellDataCoupler

class OrgDetailViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    var tableSource: TableSource?
    var organization: Organization!
    
    //Initializer
    static func create(_ organization: Organization) -> OrgDetailViewController {
        let vc = UIStoryboard(name: "OrgDetail", bundle: nil).instantiateViewController(withIdentifier: "OrgDetailViewController") as! OrgDetailViewController
        vc.organization = organization
        return vc
    }
    
    //Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        setupTableSource()
        refreshUI()
    }
    
    //Setup
    func setupUI() {
        tableView.backgroundColor = .white
    }
    
    func setupTableSource() {
        tableSource = TableSource(with: tableView)
        tableView.register(ActionListTableViewCell.self, forCellReuseIdentifier: "actionListCell")
    }
    
    func refreshUI() {
        displayItem(self.organization)
    }
}



extension OrgDetailViewController {
    func displayItem(_ organization: Organization) {
        var couplers = [BaseCellCoupler]()
        
        //Logo
        // TODO: update image from FB
//        let orgLogo = OrgDetailImageCellData(image: organization.imageURL)
//        let orgLogoCell = CellCoupler(OrgDetailImageCell.self, orgLogo)
//        couplers.append(orgLogoCell)
        
        //Name & Description
        let orgNameAndDescrip = OrgDetailCellInfo(title: organization.name, description: organization.description)
        let orgNameAndDescripCell = CellCoupler(OrgDetailCell.self, orgNameAndDescrip)
        couplers.append(orgNameAndDescripCell)
    
        
        //header
        let orgAction = OrgDetailCellInfo(title: "Contact Us")
        let orgActionCell = CellCoupler(OrgDetailCell.self, orgAction)
        couplers.append(orgActionCell)
        
        //contact
        let orgCoordinates = getCoordinates(forAddress: organization.address)
        let orgContactInfo = OrgDetailContactCellData(phoneInfo: organization.phone, emailInfo: organization.email, linkInfo: organization.websiteURL, locationCoordinates: orgCoordinates)
        let orgContactInfoCell = CellCoupler(OrgDetailContactCell.self, orgContactInfo)
        couplers.append(orgContactInfoCell)
        
        
        let donateToOrgInfo = OrgDetailButtonCellData(donationLink: organization.donateURL)
        let buttonActioncell = CellCoupler(OrgDetailButtonCell.self, donateToOrgInfo)
        couplers.append(buttonActioncell)
        
        //header
        let orgTileAction = OrgDetailCellInfo(title: "Avaliable Actions")
        let orgTitleActionCell = CellCoupler(OrgDetailCell.self, orgTileAction)
        couplers.append(orgTitleActionCell)
        
        for action in organization.actions {
            let orgActionName = OrgActionListCellData(actionName: action.name)
            let orgActionNameCell = CellCoupler(OrgActionListCell.self, orgActionName)
            couplers.append(orgActionNameCell)
        }
        
        tableSource?.set(couplers: couplers)
    }
}

extension OrgDetailViewController {
    func getCoordinates(forAddress address: String) -> CLLocationCoordinate2D? {
        let geocoder = CLGeocoder()
        var coordinates: CLLocationCoordinate2D?
        geocoder.geocodeAddressString(address) { (placemarks, error) in
            guard error == nil else {
                print("Geocoding error: \(error!)")
                return
            }
            coordinates = placemarks?.first?.location?.coordinate
        }
        return coordinates
    }
}

