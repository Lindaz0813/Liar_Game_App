import SwiftUI

struct GamePlayView: View {
    @EnvironmentObject var gameManager: GameManager
    @State private var selectedPlayer: Player?
    @State private var showingWord: Bool = false
    
    var remainingPlayers: [Player] {
        gameManager.players.filter { !$0.hasViewedWord }
    }
    
    var allPlayersViewed: Bool {
        gameManager.players.allSatisfy { $0.hasViewedWord }
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
                                    Text(player.word)
                                        .font(.title)
                                        .fontWeight(.semibold)
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
                                Text(player.word)
                                    .font(.title)
                                    .fontWeight(.semibold)
                            }
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.green.opacity(0.1))
                            .cornerRadius(12)
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
                    
                    Text("The game can now begin!")
                        .font(.headline)
                        .padding()
                    
                    Spacer()
                    
                    Button(action: {
                        gameManager.resetGame()
                    }) {
                        Text("New Game")
                            .font(.headline)
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.green)
                            .cornerRadius(12)
                    }
                    .padding(.horizontal)
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
                }
                .padding(.bottom, 40)
            }
        }
        .background(Color(.systemBackground))
    }
    
    private func markPlayerViewed(_ player: Player) {
        if let index = gameManager.players.firstIndex(where: { $0.id == player.id }) {
            gameManager.players[index].hasViewedWord = true
        }
        selectedPlayer = nil
        showingWord = false
    }
}
