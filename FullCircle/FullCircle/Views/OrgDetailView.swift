//
//  OrgDetailView.swift
//  FullCircle
//
//  Created by Sunni Tang on 8/11/20.
//  Copyright © 2020 FullCircle. All rights reserved.
//

import UIKit

class OrgDetailView: UIView {

    var orgImageView: UIImageView = {
        let imageView = UIImageView()
        //For testing:
        imageView.image = UIImage(named: "BlackLivesMatterLogo")
        return imageView
    }()
    
    let orgNameLabel = FCHeaderLabel()
    
    let orgDescriptionLabel = FCBodyLabel()
    
    var contactUsLabel: FCSubHeaderLabel = {
        let label = FCSubHeaderLabel()
        label.text = "Contact Us"
        return label
    }()
    
    var callButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(systemName: "phone"), for: .normal)
        return button
    }()
    
    var emailButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(systemName: "envelope"), for: .normal)
        return button
    }()
    
    var websiteButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(systemName: "link"), for: .normal)
        return button
    }()
    
    var donateButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(systemName: "creditcard"), for: .normal)
        return button
    }()
    
    var messageButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(systemName: "message"), for: .normal)
        return button
    }()
    
    lazy var buttonStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [callButton, emailButton, websiteButton, donateButton, messageButton])
        stackView.alignment = .center
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        return stackView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubviews()
        addConstraints()
        
        setButtonImages()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setButtonImages() {
        callButton.imageView?.image = UIImage(systemName: "phone")
        
    }
    
    
    private func addSubviews() {
        self.addSubview(orgImageView)
        self.addSubview(orgNameLabel)
        self.addSubview(callButton)
        self.addSubview(emailButton)
        self.addSubview(websiteButton)
        self.addSubview(donateButton)
        self.addSubview(messageButton)
        self.addSubview(buttonStackView)
        self.addSubview(orgDescriptionLabel)
    }
    
    private func addConstraints() {
        setOrgImageViewConstraints()
        setOrgNameLabelConstraints()
        setButtonStackView()
        setOrgDescriptionLabelConstraints()
    }
        
    private func setOrgImageViewConstraints() {
        orgImageView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            orgImageView.topAnchor.constraint(equalTo: self.topAnchor, constant: 20),
            orgImageView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 20),
            orgImageView.widthAnchor.constraint(equalToConstant: 80),
            orgImageView.heightAnchor.constraint(equalToConstant: 80)
        ])
        
    }
    
    private func setOrgNameLabelConstraints() {
        orgNameLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            orgNameLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 20),
            orgNameLabel.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -20),
            orgNameLabel.leftAnchor.constraint(equalTo: orgImageView.rightAnchor, constant: 10),
            orgNameLabel.heightAnchor.constraint(equalToConstant: 80),
        ])
    }
    
    private func setButtonStackView() {
        callButton.translatesAutoresizingMaskIntoConstraints = false
        emailButton.translatesAutoresizingMaskIntoConstraints = false
        websiteButton.translatesAutoresizingMaskIntoConstraints = false
        donateButton.translatesAutoresizingMaskIntoConstraints = false
        messageButton.translatesAutoresizingMaskIntoConstraints = false
        buttonStackView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            buttonStackView.topAnchor.constraint(equalTo: orgNameLabel.bottomAnchor, constant: 10),
            buttonStackView.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 0.8),
            buttonStackView.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            buttonStackView.heightAnchor.constraint(equalToConstant: 50)
        ])
    }

    private func setOrgDescriptionLabelConstraints() {
        orgDescriptionLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            orgDescriptionLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            orgDescriptionLabel.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 0.9),
            orgDescriptionLabel.topAnchor.constraint(equalTo: buttonStackView.bottomAnchor, constant: 10),
            orgDescriptionLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor)
        ])
    }
    
}
