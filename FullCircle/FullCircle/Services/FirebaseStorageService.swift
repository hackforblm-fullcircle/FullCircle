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
    
    //MARK: Properties
    static var manager = FirebaseStorageService()
    
    private let storage: Storage!
    private let storageReference: StorageReference
    private let logoImagesFolderReference: StorageReference
    private let maxImageSize: Int64 = 1024 * 1024
    
    //MARK: Init
    private init() {
        storage = Storage.storage()
        storageReference = storage.reference()
        logoImagesFolderReference =  storageReference.child("logo-images")
    }
    
    //MARK: Logo Image Fetcher. TODO: Make more adaptable, if other kinds of images are required
    func getImage(at location: String, completion: @escaping (Result<UIImage, Error>) -> ()) {
        logoImagesFolderReference.child(location).getData(maxSize: maxImageSize) { (data, error) in
            if let error = error {
                completion(.failure(AppError.couldNotRetrieveStorageData(error: error)))
            } else {
                if let data = data, let image = UIImage(data: data) {
                    completion(.success(image))
                } else {
                    completion(.failure(AppError.couldNotConvertImageData))
                    return
                }
                
            }
        }
    }
    
}
