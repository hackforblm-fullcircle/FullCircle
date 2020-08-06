//
//  FirebaseStorageService.swift
//  FullCircle
//
//  Created by David Rifkin on 8/6/20.
//  Copyright © 2020 FullCircle. All rights reserved.
//

import Foundation
import FirebaseStorage

class FirebaseStorageService {
    private let storage: Storage!
    private let storageReference: StorageReference
    private let logoImagesFolderReference: StorageReference
      
    private init() {
        storage = Storage.storage()
        storageReference = storage.reference()
        logoImagesFolderReference =  storageReference.child("logo-images")
    }
    
}
