import SwiftUI

struct GamePlayView: View {
    @EnvironmentObject var gameManager: GameManager
    @State private var selectedPlayer: Player?
    @State private var showingWord: Bool = false
    @State private var cachedStartingPlayer: Player?
    
    var remainingPlayers: [Player] {
        gameManager.players.filter { !$0.hasViewedWord }
    }
    
    var allPlayersViewed: Bool {
        gameManager.players.allSatisfy { $0.hasViewedWord }
    }
    
    private func selectRandomStartingPlayer() {
        let eligiblePlayers: [Player]
        
        // If imposters don't know their word (useSimilarWord = false), exclude imposters
        if !gameManager.gameSettings.useSimilarWord {
            eligiblePlayers = gameManager.players.filter { !$0.isImposter }
        } else {
            eligiblePlayers = gameManager.players
        }
        
        // Select a random player from eligible players
        cachedStartingPlayer = eligiblePlayers.randomElement()
    }
    
    var body: some View {
        VStack(spacing: 30) {
            if showingWord, let player = selectedPlayer {
                // Show word/liar status
                VStack(spacing: 30) {
                    Text("Pass the Phone")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding(.top, 40)
                    
                    Text(player.name)
                        .font(.title)
                        .fontWeight(.bold)
                        .padding()
                    
                    Spacer()
                    
                    VStack(spacing: 20) {
                        // If using similar words, hide imposter status - show only the word
                        if gameManager.gameSettings.useSimilarWord {
                            VStack(spacing: 15) {
                                Text("Your Word")
                                    .font(.title2)
                                    .fontWeight(.bold)
                                VStack(spacing: 4) {
                                    Text(player.word)
                                        .font(.title)
                                        .fontWeight(.semibold)
                                    if gameManager.gameSettings.showTranslations,
                                       let translations = WordTranslations.getTranslation(for: player.word) {
                                        VStack(spacing: 2) {
                                            Text(translations.chinese)
                                                .font(.title3)
                                                .foregroundColor(.secondary)
                                            Text(translations.korean)
                                                .font(.title3)
                                                .foregroundColor(.secondary)
                                        }
                                    }
                                }
                            }
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.green.opacity(0.1))
                            .cornerRadius(12)
                        } else {
                            // Blank word mode - show imposter status
                            if player.isImposter {
                                if player.word.isEmpty {
                                    VStack(spacing: 15) {
                                        Text("YOU ARE THE LIAR")
                                            .font(.title)
                                            .fontWeight(.bold)
                                            .foregroundColor(.red)
                                        Text("You have no word")
                                            .font(.title3)
                                            .foregroundColor(.secondary)
                                    }
                                    .padding()
                                    .frame(maxWidth: .infinity)
                                    .background(Color.red.opacity(0.1))
                                    .cornerRadius(12)
                                } else {
                                    VStack(spacing: 15) {
                                        Text("YOU ARE THE LIAR")
                                            .font(.title2)
                                            .fontWeight(.bold)
                                            .foregroundColor(.red)
                                        VStack(spacing: 4) {
                                            Text(player.word)
                                                .font(.title)
                                                .fontWeight(.semibold)
                                            if gameManager.gameSettings.showTranslations,
                                               let translations = WordTranslations.getTranslation(for: player.word) {
                                                VStack(spacing: 2) {
                                                    Text(translations.chinese)
                                                        .font(.title3)
                                                        .foregroundColor(.secondary)
                                                    Text(translations.korean)
                                                        .font(.title3)
                                                        .foregroundColor(.secondary)
                                                }
                                            }
                                        }
                                    }
                                    .padding()
                                    .frame(maxWidth: .infinity)
                                    .background(Color.red.opacity(0.1))
                                    .cornerRadius(12)
                                }
                            } else {
                                VStack(spacing: 15) {
                                    Text("Your Word")
                                        .font(.title2)
                                        .fontWeight(.bold)
                                    VStack(spacing: 4) {
                                        Text(player.word)
                                            .font(.title)
                                            .fontWeight(.semibold)
                                        if gameManager.gameSettings.showTranslations,
                                           let translations = WordTranslations.getTranslation(for: player.word) {
                                            VStack(spacing: 2) {
                                                Text(translations.chinese)
                                                    .font(.title3)
                                                    .foregroundColor(.secondary)
                                                Text(translations.korean)
                                                    .font(.title3)
                                                    .foregroundColor(.secondary)
                                            }
                                        }
                                    }
                                }
                                .padding()
                                .frame(maxWidth: .infinity)
                                .background(Color.green.opacity(0.1))
                                .cornerRadius(12)
                            }
                        }
                    }
                    .padding(.horizontal)
                    
                    Spacer()
                    
                    Button(action: {
                        markPlayerViewed(player)
                    }) {
                        Text("Done")
                            .font(.headline)
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.blue)
                            .cornerRadius(12)
                    }
                    .padding(.horizontal)
                    .padding(.bottom, 40)
                }
                .transition(.opacity)
            } else if allPlayersViewed {
                // All players have viewed
                VStack(spacing: 30) {
                    Text("Game Ready!")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding(.top, 40)
                    
                    Text("All players have viewed their words.")
                        .font(.title3)
                        .foregroundColor(.secondary)
                        .multilineTextAlignment(.center)
                    
                    if let startingPlayer = cachedStartingPlayer {
                        VStack(spacing: 8) {
                            Text("Start with:")
                                .font(.subheadline)
                                .foregroundColor(.secondary)
                            Text(startingPlayer.name)
                                .font(.title2)
                                .fontWeight(.bold)
                                .foregroundColor(.primary)
                        }
                        .padding()
                        .background(Color(.systemGray6))
                        .cornerRadius(12)
                        .padding(.horizontal)
                    }
                    
                    Text("The game can now begin!")
                        .font(.headline)
                        .padding()
                    
                    Spacer()
                    
                    VStack(spacing: 15) {
                        Button(action: {
                            gameManager.newGameWithSamePlayers()
                        }) {
                            Text("New Game (with same players)")
                                .font(.headline)
                                .foregroundColor(.white)
                                .frame(maxWidth: .infinity)
                                .padding()
                                .background(Color.green)
                                .cornerRadius(12)
                        }
                        .padding(.horizontal)
                        
                        Button(action: {
                            gameManager.resetGame()
                        }) {
                            Text("Restart with New Players")
                                .font(.headline)
                                .foregroundColor(.white)
                                .frame(maxWidth: .infinity)
                                .padding()
                                .background(Color.red)
                                .cornerRadius(12)
                        }
                        .padding(.horizontal)
                    }
                    .padding(.bottom, 40)
                }
            } else {
                // Show list of players to select from
                VStack(spacing: 20) {
                    Text("Select Yourself")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding(.top, 40)
                    
                    Text("Tap your name when it's your turn")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                        .padding(.bottom, 10)
                    
                    ScrollView {
                        VStack(spacing: 15) {
                            ForEach(remainingPlayers) { player in
                                Button(action: {
                                    selectedPlayer = player
                                    withAnimation {
                                        showingWord = true
                                    }
                                }) {
                                    HStack {
                                        Text(player.name)
                                            .font(.title2)
                                            .fontWeight(.semibold)
                                            .foregroundColor(.primary)
                                        Spacer()
                                        Image(systemName: "chevron.right")
                                            .foregroundColor(.secondary)
                                    }
                                    .padding()
                                    .background(Color(.systemGray6))
                                    .cornerRadius(12)
                                }
                                .buttonStyle(.plain)
                            }
                        }
                        .padding(.horizontal)
                    }
                    
                    if remainingPlayers.count < gameManager.players.count {
                        Text("\(gameManager.players.count - remainingPlayers.count) of \(gameManager.players.count) players have viewed their words")
                            .font(.caption)
                            .foregroundColor(.secondary)
                            .padding(.top)
                    }
                    
                    Spacer()
                    
                    Button(action: {
                        gameManager.resetGame()
                    }) {
                        Text("End Game / Go Back")
                            .font(.headline)
                            .foregroundColor(.red)
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color(.systemGray5))
                            .cornerRadius(12)
                    }
                    .padding(.horizontal)
                    .padding(.top, 20)
                }
                .padding(.bottom, 40)
            }
        }
        .background(Color(.systemBackground))
        .onChange(of: allPlayersViewed) { newValue in
            // Select random starting player when all players have viewed (game ready state)
            if newValue && cachedStartingPlayer == nil {
                selectRandomStartingPlayer()
            }
        }
        .onAppear {
            // Select random starting player if all players have already viewed
            if allPlayersViewed && cachedStartingPlayer == nil {
                selectRandomStartingPlayer()
            }
        }
    }
    
    private func markPlayerViewed(_ player: Player) {
        if let index = gameManager.players.firstIndex(where: { $0.id == player.id }) {
            gameManager.players[index].hasViewedWord = true
        }
        selectedPlayer = nil
        showingWord = false
    }
}
