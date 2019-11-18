//
//  DataModel.swift
//  TablePractice
//
//  Created by apple on 2019/10/24.
//  Copyright © 2019 apple. All rights reserved.
//
import Foundation
struct Friend : Codable{
    let name : String
    let countryName : String
    let bio : String
    
    static func allFriends() -> [Friend] {
        let jsonURL = Bundle.main.url(forResource: "data", withExtension: "json")!
        do {
            let jsonData = try Data(contentsOf: jsonURL)
            let friends = try JSONDecoder().decode([Friend].self, from: jsonData)
            return friends
        } catch {
            return []
        }
    }
}
