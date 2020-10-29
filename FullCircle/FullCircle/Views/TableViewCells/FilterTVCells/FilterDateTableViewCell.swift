//
//  FilterDateTableViewCell.swift
//  FullCircle
//
//  Created by Sunni Tang on 10/29/20.
//  Copyright © 2020 FullCircle. All rights reserved.
//

import UIKit

class FilterDateTableViewCell: UITableViewCell {
    
    //MARK: - UI Objects
    let filterDateLabel: FCHeaderLabel = {
        let label = FCHeaderLabel()
        label.text = "filter by Date"
        label.textAlignment = .center
        return label
    }()
    
    //TODO: Add date picker
    
    
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
        addSubview(filterDateLabel)
    }
    
    private func addConstraints() {
        setFilterDateLabelConstraints()
    }
    
    private func setFilterDateLabelConstraints() {
        filterDateLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            filterDateLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            filterDateLabel.heightAnchor.constraint(equalToConstant: 30),
            filterDateLabel.leftAnchor.constraint(equalTo: self.leftAnchor),
            filterDateLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 5)
        ])
    }
}
