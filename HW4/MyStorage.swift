//
//  MyStorage.swift
//  HW4
//
//  Created by Arman on 12/28/21.
//

import Foundation
import SwiftUI

class Storage {
    @AppDataStorage (key: "link_models", defaultValue: [])
    static var linkModels: [LinkModel]
}

@propertyWrapper
struct AppDataStorage <T: Codable> {
    private let key: String
    private let defaultValue: T
    
    init(key: String, defaultValue: T) {
        self.key = key
        self.defaultValue = defaultValue
    }
    
    var wrappedValue: T {
        get {
            guard let data = UserDefaults.standard.object(forKey: key) as? Data else {
                return defaultValue
            }
            let value = try? JSONDecoder().decode(T.self, from: data)
            return value ?? defaultValue
        }
        set {
            let data = try? JSONEncoder().encode(newValue)
            UserDefaults.standard.set(data, forKey: key)
        }
    }
}
