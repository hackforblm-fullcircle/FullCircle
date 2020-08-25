//
//  ActionListViewController+SearchBar.swift
//  FullCircle
//
//  Created by Sunni Tang on 8/25/20.
//  Copyright © 2020 FullCircle. All rights reserved.
//

import UIKit

extension ActionListViewController: UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        if searchText == "" {
            actions = allActions
        } else {
            var searchResults = [Action]()
            
            searchResults.append(contentsOf: allActions.filter { $0.name.lowercased().contains(searchText.lowercased()) })
            searchResults.append(contentsOf: allActions.filter { $0.organizationName.lowercased().contains(searchText.lowercased()) })
            searchResults.append(contentsOf: allActions.filter { $0.description.lowercased().contains(searchText.lowercased()) })
            searchResults.append(contentsOf: allActions.filter { $0.actionType.rawValue.contains(searchText.lowercased()) })
            
            actions = searchResults
        }
    }
}
