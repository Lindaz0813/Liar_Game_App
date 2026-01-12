import Foundation

struct Player: Identifiable {
    let id = UUID()
    var name: String
    var profileIcon: String = ProfilePicture.randomIcon()
    var word: String = ""
    var isImposter: Bool = false
    var hasViewedWord: Bool = false
}
