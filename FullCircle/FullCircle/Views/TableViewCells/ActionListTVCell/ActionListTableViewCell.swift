//
//  ActionListTableViewCell.swift
//  FullCircle
//
//  Created by Sunni Tang on 6/13/20.
//  Copyright © 2020 FullCircle. All rights reserved.
//

import UIKit

class ActionListTableViewCell: UITableViewCell {
    
    //MARK: - UI Objects
    let infoView = FCCellView()
    
    let noActionLabel: FCBodyLabel = {
        let label = FCBodyLabel()
        label.text = "No saved actions... browse the Actions List to start making a difference!"
        label.textAlignment = .center
        label.isHidden = true
        return label
    }()
    
    let actionNameLabel = FCHeaderLabel()
    let withLabel: FCCaptionLabel = {
        let label = FCCaptionLabel()
        label.text = "with"
        return label
    }()
    let orgNameLabel = FCBodyLabel()

    //TODO: Add image logos for action type i.e. telephone or email
    lazy var actionTypeImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        return imageView
    }()
    
    //TODO: Place temp image
    lazy var saveActionButton: UIButton = {
        let button = UIButton()
        button.addTarget(self, action: #selector(saveActionButtonPressed(_:)), for: .touchUpInside)
        return button
    }()
    
    //TODO: Add Follow button for users
    
    var saveAction: (() -> ())?
    
    //MARK: - Initializers
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        backgroundColor = .clear
        selectionStyle = .none
        
        addSubviews()
        addConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Cell Lifecycle Methods
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
    
    @objc func saveActionButtonPressed(_ sender: UIButton) {
        // Take care of persisting saved actions here
        if let closure = self.saveAction {
            closure()
            if saveActionButton.backgroundImage(for: .normal) == UIImage(systemName: "star.circle") {
                saveActionButton.setBackgroundImage(UIImage(systemName: "star.circle.fill"), for: .normal)
                saveActionButton.tintColor = FCDesign.red
            } else {
                saveActionButton.setBackgroundImage(UIImage(systemName: "star.circle"), for: .normal)
                saveActionButton.tintColor = FCDesign.darkGrey
            }
        }
    }
}
