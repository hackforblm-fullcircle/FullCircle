//
//  OrgDetailButtonCell.swift
//  FullCircle
//
//  Created by Aishat Olowoshile on 6/14/20.
//  Copyright © 2020 FullCircle. All rights reserved.
//

import UIKit

//struct OrgDetailButtonCellData {
//    let donationLink: String?
//}
//
//class OrgDetailButtonCell: BaseTableViewCell<OrgDetailButtonCellData> {
//    
//    @IBOutlet weak var actionButton: UIButton!
//    
//    override func setup() {
//        actionButton.setTitle("Donate", for: .normal)
//        setUpUI()
//    }
//    
//    func setUpUI() {
//        actionButton.layer.cornerRadius = 5
//    }
//    
//    @IBAction func didTapDonate(_ sender: Any) {
//        openWebsite()
//    }
//}
//
//extension OrgDetailButtonCell {
//    private func openWebsite() {
//        guard let websiteAddress = info?.donationLink else { return }
//        guard let url = URL(string: websiteAddress) else { return }
//        
//        if UIApplication.shared.canOpenURL(url) {
//            UIApplication.shared.open(url, options: [:], completionHandler: nil)
//        }
//    }
//}
