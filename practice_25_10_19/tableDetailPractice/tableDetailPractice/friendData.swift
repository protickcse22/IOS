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

struct Section {
    let name: String
    var friends: [Friend]

    static func alphabaticallySectionedFriends() -> [Section] {
        let friends = Friend.allFriends().sorted { $0.name < $1.name }
        let groupedFriends = Dictionary(grouping: friends) { String($0.name.first!).uppercased() }
        let sections = groupedFriends.map { Section(name: $0.key, friends: $0.value) }
        let sortedSections = sections.sorted { $0.name < $1.name }
        return sortedSections
    }
}
