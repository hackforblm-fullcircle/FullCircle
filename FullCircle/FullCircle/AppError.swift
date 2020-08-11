//
//  AppError.swift
//  FullCircle
//
//  Created by David Rifkin on 8/6/20.
//  Copyright © 2020 FullCircle. All rights reserved.
//

import Foundation

enum AppError: Error {
    case couldNotConvertImageData
    case couldNotRetrieveStorageData(error: Error)
    case couldNotRetrieveFirestoreData(error: Error)
}
