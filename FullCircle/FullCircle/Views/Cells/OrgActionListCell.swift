//
//  OrgActionListCell.swift
//  FullCircle
//
//  Created by Aishat Olowoshile on 6/14/20.
//  Copyright © 2020 FullCircle. All rights reserved.
//

import UIKit

struct OrgActionListCellData {
    let actionName: String?
}

class OrgActionListCell: BaseTableViewCell<OrgActionListCellData> {
    
    @IBOutlet weak var actionNAmeLabel: FCSubHeaderLabel!
    
    override func setup() {
        actionNAmeLabel.text = info?.actionName ?? ""
    }
}
