//
//  FriendModel.swift
//  Storage Practice
//
//  Created by apple on 2019/10/29.
//  Copyright © 2019 apple. All rights reserved.
//

import Foundation

struct Friend: Codable {
    let name: String
    let countryName: String
    let bio: String

    static func allFriends() -> [Friend] {
        let jsonURL = Bundle.main.url(forResource: "friend", withExtension: "json")!
        do {
            let jsonData = try Data(contentsOf: jsonURL)
            let friends = try JSONDecoder().decode([Friend].self, from: jsonData)
            return friends
        } catch {
            return []
        }
    }
}
