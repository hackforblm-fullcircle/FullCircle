//
//  OrgDetailViewController.swift
//  FullCircle
//
//  Created by Sunni Tang on 8/4/20.
//  Copyright © 2020 FullCircle. All rights reserved.
//

import UIKit

class OrgDetailViewController: UIViewController {
    
    //MARK: - UI Objects
    let orgDetailView = OrgDetailView()
    
    var actionsLabel: FCSubHeaderLabel = {
        let label = FCSubHeaderLabel()
        label.text = "Actions"
        return label
    }()
    
    //TODO: Set up tableview
    var orgActionsTableView = UITableView()
    
    //MARK: - Internal Properties
    var organization: Organization!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = FCDesign.medGrey
        self.navigationItem.title = "FullCircle"
        
        addSubviews()
        addConstraints()
    }
 
    //    private func callNumber() {
    //        guard let number = info?.phoneInfo else { return }
    //        if let url = URL(string: "telprompt://\(number)") {
    //            let application = UIApplication.shared
    //            guard application.canOpenURL(url) else {
    //                return
    //            }
    //            application.open(url, options: [:], completionHandler: nil)
    //        }
    //    }
    //
    //    private func openEmailApp() {
    //        guard let emailAddress = info?.emailInfo else { return }
    //        if let emailURL = URL(string: "mailto:\(emailAddress)"), UIApplication.shared.canOpenURL(emailURL)
    //        {
    //            UIApplication.shared.open(emailURL, options: [:], completionHandler: nil)
    //        }
    //    }
    //
    //    private func openWebsite() {
    //        guard let websiteAddress = info?.linkInfo else { return }
    //        guard let url = URL(string: websiteAddress) else { return }
    //
    //        if UIApplication.shared.canOpenURL(url) {
    //            UIApplication.shared.open(url, options: [:], completionHandler: nil)
    //        }
    //    }

}
