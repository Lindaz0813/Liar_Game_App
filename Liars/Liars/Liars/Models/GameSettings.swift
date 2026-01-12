import Foundation

struct GameSettings {
    var numberOfPlayers: Int = 6
    var numberOfImposters: Int = 2
    var useSimilarWord: Bool = false // false = blank word, true = similar word
    var showTranslations: Bool = false // Show Chinese/Korean translations under words
}
