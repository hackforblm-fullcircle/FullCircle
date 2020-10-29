//
//  FilterCauseTableViewCell.swift
//  FullCircle
//
//  Created by Sunni Tang on 10/29/20.
//  Copyright © 2020 FullCircle. All rights reserved.
//

import UIKit

class FilterCauseTableViewCell: UITableViewCell {
    
    //MARK: - UI Objects
    let filterCauseLabel: FCHeaderLabel = {
        let label = FCHeaderLabel()
        label.text = "filter by Cause"
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
        addSubview(filterCauseLabel)
    }
    
    private func addConstraints() {
        setFilterCauseLabelConstraints()
    }
    
    private func setFilterCauseLabelConstraints() {
        filterCauseLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            filterCauseLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            filterCauseLabel.heightAnchor.constraint(equalToConstant: 30),
            filterCauseLabel.leftAnchor.constraint(equalTo: self.leftAnchor),
            filterCauseLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 5)
        ])
    }
}
