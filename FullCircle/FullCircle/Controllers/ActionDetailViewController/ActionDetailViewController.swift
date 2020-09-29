//
//  ActionDetailViewController.swift
//  FullCircle
//
//  Created by Sunni Tang on 6/12/20.
//  Copyright © 2020 FullCircle. All rights reserved.
//

import UIKit
import MessageUI
import MapKit
import CoreLocation

class ActionDetailViewController: UIViewController {
    
    var action: Action!
    private let padding: CGFloat = 10.0
    
    
    let lat = 40.6739
    let long = -73.9701
    
    let initialLocation = CLLocation(latitude: 40.6739, longitude: -73.9701)
    let searchRadius: Double = 2000
    
    private lazy var orgLogoView: UIImageView = {
        let imageView = UIImageView()
        // TODO: Get image from Firebase Storage
        //        imageView.image = UIImage(named: self.action.organizationID.logoString)
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    private lazy var orgNameLabel: FCHeaderLabel = {
        let label = FCHeaderLabel()
        label.textAlignment = .center
        label.text = action.organizationName
        return label
    }()
    
    private lazy var activityTypeIconView: UIImageView = {
        let iconView = UIImageView()
        // Refactor to load image from URL string
//        iconView.image = UIImage(named: self.action.imageURL)
        return iconView
    }()
    
    private lazy var descriptionTextLabel: FCBodyLabel = {
        let label = FCBodyLabel()
        label.text = action.description
        return label
    }()
    
    private lazy var descriptionTextView: UITextView = {
        let textView = UITextView()
        textView.backgroundColor = .white
        textView.font = FCDesign.bodyFont
        textView.textColor = FCDesign.darkBlue
        textView.textAlignment = .left
//        textView.text = self.action.description
        textView.isUserInteractionEnabled = false
        return textView
    }()
    
    private lazy var takeActionButton: UIButton = {
        let button = UIButton()
        button.setTitle("Take Action", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = FCDesign.red
        button.addTarget(self, action: #selector(takeActionButtonPressed), for: .touchUpInside)
        return button
    }()
    
    lazy var mapView: MKMapView = {
        let mapView = MKMapView()
        mapView.isHidden = true
        mapView.isUserInteractionEnabled = false
        return mapView
    }()
    
    lazy var dismissButton: UIButton = {
        let button = UIButton()
        button.isHidden = true
        button.isUserInteractionEnabled = false
        button.backgroundColor = .lightGray
        button.setTitle("Dismiss", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.addTarget(self, action: #selector(dismissButtonPressed), for: .touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(displayP3Red: 244, green: 244, blue: 244, alpha: 0.9)
        addSubviews()
        setupDelegates()
        getAnnotation()
        constrainSubviews()
        roundViewCorners()
    }
    
    @objc private func takeActionButtonPressed() {
        
        switch action.actionType {
        case .protest:
            showMap()
        case .email:
            sendEmail()
        case .phone:
            callRep()
        case .donate:
            openDonatePage()
        case .petition:
            openPetitionPage()
        }
    }
    
    @objc private func dismissButtonPressed() {
        mapView.isHidden = true
        mapView.isUserInteractionEnabled = false
        dismissButton.isUserInteractionEnabled = false
        dismissButton.isHidden = true
        navigationController?.navigationBar.isHidden = false
        view.sendSubviewToBack(mapView)
    }
    
    private func openDonatePage () {
        if let url = URL(string: "\(action.actionURL)") {
            UIApplication.shared.open(url)
        }
    }
    
    private func callRep() {
        guard let number = URL(string: "tel://" + action.actionURL) else { return }
        UIApplication.shared.open(number)
    }
    
    private func openPetitionPage() {
        if let url = URL(string: "\(action.actionURL)") {
            UIApplication.shared.open(url)
        }
    }
    
    private func sendEmail() {
        if MFMailComposeViewController.canSendMail() {
            let mail = MFMailComposeViewController()
            mail.mailComposeDelegate = self
            mail.setToRecipients(["localrep@government.gov"])
            mail.setMessageBody("<p>Dear local lawmaker: Please pledge your support for the new police reform bill</p>", isHTML: true)
            
            present(mail, animated: true)
        } else {
            print("Could not send mail")
            // show failure alert
        }
    }
    
    private func showMap() {
        mapView.isHidden = false
        mapView.isUserInteractionEnabled = true
        dismissButton.isHidden = false
        dismissButton.isUserInteractionEnabled = true
        navigationController?.navigationBar.isHidden = true
        view.bringSubviewToFront(mapView)
    }
    
    private func setupDelegates() {
        mapView.delegate = self
        mapView.userTrackingMode = .follow
        
    }
    
    private func roundViewCorners() {
        let shadowOffset = CGSize(width: 0, height: 2)
        
        descriptionTextView.layer.cornerRadius = 5
        descriptionTextView.layer.borderWidth = 1
        descriptionTextView.layer.borderColor = FCDesign.darkGrey.cgColor
        descriptionTextView.layer.masksToBounds = true
        
        let shadowPath = UIBezierPath(roundedRect: descriptionTextView.bounds, cornerRadius: descriptionTextView.layer.cornerRadius).cgPath
        
        descriptionTextView.layer.shadowOffset = shadowOffset
        descriptionTextView.layer.shadowRadius = 2
        descriptionTextView.layer.shadowOpacity = 0.25
        descriptionTextView.layer.masksToBounds = false
        descriptionTextView.layer.shadowPath = shadowPath
        
        view.layoutIfNeeded()
    }
    
    private func addSubviews() {
        view.addSubview(orgLogoView)
        descriptionTextView.addSubview(orgNameLabel)
        descriptionTextView.addSubview(descriptionTextLabel)
        view.addSubview(descriptionTextView)
        descriptionTextView.addSubview(activityTypeIconView)
        view.addSubview(takeActionButton)
        view.addSubview(mapView)
        mapView.addSubview(dismissButton)
    }
    
    private func constrainSubviews() {
        constrainOrgLogoView()
        constrainOrgNameLabel()
        constrainDescriptionTextView()
        constrainDescriptionLabel()
        constrainActivityTypeIconView()
        constrainTakeActionButton()
        constrainMapView()
        constrainDismissButton()
    }
    
    private func constrainOrgLogoView() {
        orgLogoView.translatesAutoresizingMaskIntoConstraints = false
        [orgLogoView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 27.5),
         orgLogoView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 81.5),
         orgLogoView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -81.67), orgLogoView.heightAnchor.constraint(equalToConstant: 111),
         orgLogoView.widthAnchor.constraint(equalToConstant: 197.33)].forEach {$0.isActive = true}
        
    }
    private func constrainOrgNameLabel() {
        orgNameLabel.translatesAutoresizingMaskIntoConstraints = false
        [orgNameLabel.topAnchor.constraint(equalTo: descriptionTextView.topAnchor, constant: 22),
         orgNameLabel.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
         orgNameLabel.leadingAnchor.constraint(equalTo: descriptionTextView.leadingAnchor, constant: 26),
         orgNameLabel.trailingAnchor.constraint(equalTo: descriptionTextView.trailingAnchor, constant: -26)].forEach {$0.isActive = true}
    }
    
    private func constrainDescriptionTextView() {
        descriptionTextView.translatesAutoresizingMaskIntoConstraints = false
        [descriptionTextView.topAnchor.constraint(equalTo: orgLogoView.bottomAnchor, constant: 26),
         descriptionTextView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -30),
         descriptionTextView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 22.5), descriptionTextView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -22.5)].forEach {$0.isActive = true}
    }
    
    private func constrainDescriptionLabel() {
        descriptionTextLabel.translatesAutoresizingMaskIntoConstraints = false
        [descriptionTextLabel.topAnchor.constraint(equalTo: orgNameLabel.bottomAnchor, constant: 40),
         descriptionTextLabel.leadingAnchor.constraint(equalTo: descriptionTextView.leadingAnchor, constant: 33),
         descriptionTextLabel.trailingAnchor.constraint(equalTo: descriptionTextView.trailingAnchor, constant: -26)].forEach {$0.isActive = true}
    }
    
    private func constrainActivityTypeIconView() {
        activityTypeIconView.translatesAutoresizingMaskIntoConstraints = false
        [activityTypeIconView.topAnchor.constraint(equalTo: descriptionTextView.topAnchor),
         activityTypeIconView.trailingAnchor.constraint(equalTo: descriptionTextView.trailingAnchor),
         activityTypeIconView.heightAnchor.constraint(equalToConstant: 30)].forEach {$0.isActive = true}
    }
    
    private func constrainTakeActionButton() {
        takeActionButton.translatesAutoresizingMaskIntoConstraints = false
        [takeActionButton.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
         takeActionButton.bottomAnchor.constraint(equalTo: descriptionTextView.safeAreaLayoutGuide.bottomAnchor, constant: (-4 * padding)),
         takeActionButton.heightAnchor.constraint(equalToConstant: 48),
         takeActionButton.widthAnchor.constraint(equalToConstant: 165)].forEach {$0.isActive = true}
    }
    
    private func constrainMapView() {
        mapView.translatesAutoresizingMaskIntoConstraints = false
        [mapView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
         mapView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
         mapView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
         mapView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor)].forEach {$0.isActive = true}
    }
    
    private func constrainDismissButton() {
        dismissButton.translatesAutoresizingMaskIntoConstraints = false
        [dismissButton.leadingAnchor.constraint(equalTo: mapView.safeAreaLayoutGuide.leadingAnchor, constant: padding),
         dismissButton.bottomAnchor.constraint(equalTo: mapView.safeAreaLayoutGuide.bottomAnchor, constant: -padding),
         dismissButton.heightAnchor.constraint(equalToConstant: 20),
         dismissButton.widthAnchor.constraint(equalToConstant: 80)].forEach {$0.isActive = true}
    }
    
}

extension ActionDetailViewController: MFMailComposeViewControllerDelegate {
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        switch result.rawValue {
        case MFMailComposeResult.cancelled.rawValue:
            print("Cancelled")
        case MFMailComposeResult.saved.rawValue:
            print("Saved")
        case MFMailComposeResult.sent.rawValue:
            print("Sent")
        case MFMailComposeResult.failed.rawValue:
            print("Error: \(String(describing: error?.localizedDescription))")
        default:
            break
        }
        controller.dismiss(animated: true, completion: nil)
    }
}
