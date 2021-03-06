//
//  FCCaptionLabel.swift
//  FullCircle
//
//  Created by Sunni Tang on 6/14/20.
//  Copyright © 2020 FullCircle. All rights reserved.
//

import UIKit

class FCCaptionLabel: UILabel {

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.font = FCDesign.captionFont
        self.textAlignment = .left
        self.numberOfLines = 0
        self.adjustsFontSizeToFitWidth = true
        self.textColor = FCDesign.darkBlue
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}

