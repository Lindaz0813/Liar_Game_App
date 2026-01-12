import Foundation

enum Category: String, CaseIterable {
    case leagueOfLegends = "League of Legends Champions"
    case valorant = "Valorant Champions"
    case food = "Food"
    case fruits = "Fruits"
    
    var displayName: String {
        return self.rawValue
    }
}
