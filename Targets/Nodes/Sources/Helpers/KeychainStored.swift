//
//  KeychainStored.swift
//  Nodes
//
//  Created by Murilo Araujo on 09/12/23.
//

@propertyWrapper
struct KeychainStored {
    let key: String
    
    var wrappedValue: String? {
        get {
            try? KeychainHelper.get(forKey: key)
        }
        set {
            guard let newValue = newValue else {
                try? KeychainHelper.delete(forKey: key)
                return
            }
            try? KeychainHelper.set(newValue, forKey: key)
        }
    }
}
