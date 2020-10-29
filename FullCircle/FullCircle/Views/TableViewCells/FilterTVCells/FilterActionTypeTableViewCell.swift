//
//  FilterActionTableViewCell.swift
//  FullCircle
//
//  Created by Sunni Tang on 10/29/20.
//  Copyright © 2020 FullCircle. All rights reserved.
//

import UIKit

class FilterActionTypeTableViewCell: UITableViewCell {

    //MARK: - UI Objects
    let filterActionTypeLabel: FCHeaderLabel = {
        let label = FCHeaderLabel()
        label.text = "filter by Action Type"
        label.textAlignment = .center
        return label
    }()

//    let causeCollectionView = UICollectionView()
    
    
    //MARK: - Initializers
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        selectionStyle = .none
        backgroundColor = .clear
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
    
    
    //MARK: - Constraints
    private func addSubviews() {
        addSubview(filterActionTypeLabel)
    }
    
    private func addConstraints() {
        setFilterActionTypeLabelConstraints()
    }
    
    private func setFilterActionTypeLabelConstraints() {
        filterActionTypeLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            filterActionTypeLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            filterActionTypeLabel.heightAnchor.constraint(equalToConstant: 30),
            filterActionTypeLabel.leftAnchor.constraint(equalTo: self.leftAnchor),
            filterActionTypeLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 5)
        ])
    }
}
