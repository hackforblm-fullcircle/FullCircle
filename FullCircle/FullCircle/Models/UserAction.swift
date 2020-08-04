//
//  UserAction.swift
//  FullCircle
//
//  Created by Sunni Tang on 7/28/20.
//  Copyright © 2020 FullCircle. All rights reserved.
//

import Foundation

struct UserAction {
    let id: String
    let actionID: String
    let userID: String
    let isCompleted: Bool
    let completionDate: Date?
    
    // Initializers
    // Init UserAction by saving before completion
    init(id: String, actionID: String, userID: String, isCompleted: Bool, completionDate: Date?) {
        self.id = "userAction-\(UUID().description)"
        self.actionID = actionID
        self.userID = userID
        self.isCompleted = false
        self.completionDate = nil
    }
    
    // TODO: Create custom init for UserActions when saved without completing and when completing before saving
}
