//
//  OrgDetailContactCell.swift
//  FullCircle
//
//  Created by Aishat Olowoshile on 6/14/20.
//  Copyright © 2020 FullCircle. All rights reserved.
//

import UIKit
//import MapKit

//struct OrgDetailContactCellData {
//     let phoneInfo: String?
//     let emailInfo: String?
//     let linkInfo: String?
//    let locationCoordinates: CLLocationCoordinate2D?
//}
//
//class OrgDetailContactCell: BaseTableViewCell<OrgDetailContactCellData>{
//
//    @IBOutlet weak var phoneButton: UIButton!
//    @IBOutlet weak var emailButton: UIButton!
//    @IBOutlet weak var linkButton: UIButton!
//    @IBOutlet weak var messageButton: UIButton!
//
//
//    var locationManager = CLLocationManager()
//    let authorizationStatus = CLLocationManager.authorizationStatus()
//    let regionRadius: CLLocationDistance = 1000
//
//    override func setup() {
//    }
//
//    @IBAction func didTapPhoneButton(_ sender: Any) {
//        callNumber()
//    }
//
//    @IBAction func didTapEmailButton(_ sender: Any) {
//        openEmailApp()
//    }
//
//    @IBAction func didTapLinkButton(_ sender: Any) {
//        openWebsite()
//    }
//
//}
//
//
//extension OrgDetailContactCell {
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
//
//    private func configureLocationServices() {
//        if authorizationStatus == .notDetermined {
//            locationManager.requestAlwaysAuthorization()
//        } else {
//            return
//        }
//    }
//}
//
