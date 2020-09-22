//
//  String+Validation.swift
//  FullCircle
//
//  Created by David Rifkin on 9/22/20.
//  Copyright © 2020 FullCircle. All rights reserved.
//

import Foundation
extension String {
    var isValidEmail: Bool {

        let validEmailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
        
        let emailPredicate = NSPredicate(format:"SELF MATCHES %@", validEmailRegEx)
        return emailPredicate.evaluate(with: self)
    }
    
    var isValidPassword: Bool {

        //valid password: at least one capital letter, one number, one lower case letter, and is at least 8 characters long
        let validPasswordRegEx =  "(?=.*[A-Z])(?=.*[0-9])(?=.*[a-z]).{8,}"
        let passwordPredicate = NSPredicate(format: "SELF MATCHES %@", validPasswordRegEx)
        return passwordPredicate.evaluate(with: self)
    }
}
