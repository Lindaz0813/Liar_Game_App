import Foundation
import SwiftUI

enum GameStep {
    case setup
    case category
    case playerNames
    case namesDisplay
    case gameplay
}

class GameManager: ObservableObject {
    @Published var currentStep: GameStep = .setup
    @Published var gameSettings = GameSettings()
    @Published var selectedCategory: Category?
    @Published var players: [Player] = []
    @Published var currentPlayerIndex: Int = 0
    
    var currentWord: String {
        guard let category = selectedCategory else { return "" }
        return WordList.getRandomWord(for: category)
    }
    
    func startGame() {
        // Assign roles to players
        let imposterIndices = assignImposterRoles()
        
        // Generate words for each player
        for i in 0..<players.count {
            if imposterIndices.contains(i) {
                players[i].isImposter = true
                if gameSettings.useSimilarWord {
                    players[i].word = WordList.getSimilarWord(
                        for: currentWord,
                        category: selectedCategory!
                    )
                } else {
                    players[i].word = "" // Blank word
                }
            } else {
                players[i].word = currentWord
            }
        }
        
        currentStep = .gameplay
    }
    
    private func assignImposterRoles() -> Set<Int> {
        var imposterIndices = Set<Int>()
        let numberOfImposters = gameSettings.numberOfImposters
        
        while imposterIndices.count < numberOfImposters {
            let randomIndex = Int.random(in: 0..<players.count)
            imposterIndices.insert(randomIndex)
        }
        
        return imposterIndices
    }
    
    func nextPlayer() {
        currentPlayerIndex += 1
        if currentPlayerIndex >= players.count {
            // All players have viewed their word, game can start
            currentPlayerIndex = 0
        }
    }
    
    func resetGame() {
        currentStep = .setup
        gameSettings = GameSettings()
        selectedCategory = nil
        players = []
        currentPlayerIndex = 0
    }
}
