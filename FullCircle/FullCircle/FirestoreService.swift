//
//  FirestoreService.swift
//  FullCircle
//
//  Created by David Rifkin on 8/4/20.
//  Copyright © 2020 FullCircle. All rights reserved.
//

import Foundation
import FirebaseFirestore

class FirestoreService {

    //MARK: Service Setup
    static let manager = FirestoreService()
        
    private let db = Firestore.firestore()
    private init () {}

    //MARK: Model Types
    enum ModelTypes: String {
        case organization
        case action
    }
    
    //MARK: Organizations
    func getAllOrganizations(completion: @escaping (Result<[Organization], Error>) -> ()) {
        db.collection(ModelTypes.organization.rawValue).getDocuments { (snapshot, error) in
            if let error = error {
                completion(.failure(error))
            } else {
                let organizations = snapshot?.documents.compactMap({ (snapshot) -> Organization? in
                    let orgID = snapshot.documentID
                    let org = Organization(from: snapshot.data(), id: orgID)
                    return org
                })
                completion(.success(organizations ?? []))
            }
        }
    }
    
    //MARK: Actions. TODO: Add getAll(forOrganization:) and getAll(forUser:)
    func getAllActions(completion: @escaping (Result<[Action], Error>) -> ()) {
        db.collection(ModelTypes.action.rawValue).getDocuments { (snapshot, error) in
            if let error = error {
                completion(.failure(error))
            } else {
                let actions = snapshot?.documents.compactMap({ (snapshot) -> Action? in
                    let actionID = snapshot.documentID
                    let action = Action(from: snapshot.data(), id: actionID)
                    return action
                })
                completion(.success(actions ?? []))
            }
        }
    }
    
    
}
