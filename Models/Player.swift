import Foundation

struct Player: Identifiable {
    let id = UUID()
    var name: String
    var word: String = ""
    var isImposter: Bool = false
    var hasViewedWord: Bool = false
}
