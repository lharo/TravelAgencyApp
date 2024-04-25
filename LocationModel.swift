//
//  LocationModel.swift
//  TravelAgencyExcercise
//
//  Created by Luis Esteban Haro on 17/04/24.
//

import Foundation

struct Location: Codable {
    let name: String
    let plans: [Plan]
}

struct Plan: Codable {
    let name: String
    let price: Int
    let description: String
    let duration: String
    let included: [String]
    let optional: [String]
    let difficulty: String
}

struct TravelData: Codable {
    let locations: [Location]
    
    static func getLocationsFromJSON() -> [Location] {
        if let fileUrl = Bundle.main.url(forResource: "locations", withExtension: "json") {
            do {
                let data = try Data(contentsOf: fileUrl)
                let decoder = JSONDecoder()
                let travelData = try decoder.decode(TravelData.self, from: data)
                return travelData.locations
            } catch {
                print("Error reading file:", error)
                return []
            }
        } else {
            print("Could not find resource")
            return []
        }
    }

}


