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
    
    private var gameWord: String = ""
    private var imposterWord: String = ""
    
    func startGame() {
        guard let category = selectedCategory else { return }
        
        // Validate that we have enough players for the imposters
        let numberOfImposters = min(gameSettings.numberOfImposters, players.count - 1)
        
        // Generate ONE word for all regular players
        gameWord = WordList.getRandomWord(for: category)
        
        // Generate ONE word for all imposters (if using similar words)
        if gameSettings.useSimilarWord {
            imposterWord = WordList.getSimilarWord(for: gameWord, category: category)
        } else {
            imposterWord = "" // Blank word
        }
        
        // Assign roles to players
        let imposterIndices = assignImposterRoles(numberOfImposters: numberOfImposters)
        
        // Assign words to each player
        for i in 0..<players.count {
            if imposterIndices.contains(i) {
                players[i].isImposter = true
                players[i].word = imposterWord
            } else {
                players[i].word = gameWord
            }
        }
        
        currentStep = .gameplay
    }
    
    private func assignImposterRoles(numberOfImposters: Int) -> Set<Int> {
        var imposterIndices = Set<Int>()
        
        // Don't assign more imposters than we have players
        let maxImposters = min(numberOfImposters, players.count)
        
        while imposterIndices.count < maxImposters {
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
        gameWord = ""
        imposterWord = ""
    }
    
    func newGameWithSamePlayers() {
        // Reset game state but keep players and settings
        // Reset player game states
        for i in 0..<players.count {
            players[i].word = ""
            players[i].isImposter = false
            players[i].hasViewedWord = false
        }
        currentPlayerIndex = 0
        gameWord = ""
        imposterWord = ""
        // Go back to category selection
        currentStep = .category
    }
}
