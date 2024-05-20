//
//  Utils.swift
//  ios-app-movies
//
//  Created by Diego De Oliveira on 20/05/24.
//

import Foundation

func loadAPIKey() -> String? {
    guard let path = Bundle.main.path(forResource: "config", ofType: "plist"),
          let xml = FileManager.default.contents(atPath: path) else {
        return nil
    }
    do {
        let config = try PropertyListSerialization.propertyList(from: xml, options: .mutableContainersAndLeaves, format: nil) as? [String: Any]
        return config?["API_KEY"] as? String
    } catch {
        print("Error reading plist: \(error)")
        return nil
    }
}
