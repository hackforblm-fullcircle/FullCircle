//
//  PersistenceHelper.swift
//  FullCircle
//
//  Created by Levi Davis on 6/13/20.
//  Copyright © 2020 FullCircle. All rights reserved.
//

import Foundation

struct PersistenceHelper<T: Codable> {
    private let fileName: String
    private let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0]
    private var url: URL {
        return filePathFromDocumentsDirectory(name: fileName)
    }
    
    init(fileName: String) {
        self.fileName = fileName
    }
    
    private func filePathFromDocumentsDirectory(name: String) -> URL {
        return documentsDirectory.appendingPathComponent(name)
    }
    
    func getObjects() throws -> [T] {
        guard let data = FileManager.default.contents(atPath: url.path) else {return []}
        return try PropertyListDecoder().decode([T].self, from: data)
    }
    
    func save(newElement: T) throws {
        var elements = try getObjects()
        elements.append(newElement)
        let serializedData = try PropertyListEncoder().encode(elements)
        try serializedData.write(to: url, options: Data.WritingOptions.atomic)
    }
    
    func delete(elements: [T], index: Int) throws {
        var elements = try getObjects()
        elements.remove(at: index)
        let serializedData = try PropertyListEncoder().encode(elements)
        try serializedData.write(to: url, options: Data.WritingOptions.atomic)
    }
}

