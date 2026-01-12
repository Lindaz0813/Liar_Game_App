import SwiftUI

struct PlayerNameInputView: View {
    @EnvironmentObject var gameManager: GameManager
    @State private var playerName: String = ""
    @FocusState private var isTextFieldFocused: Bool
    @State private var selectedPlayerId: UUID?
    
    var body: some View {
        VStack(spacing: 30) {
            Text("Enter Player Names")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.top, 40)
            
            VStack(spacing: 20) {
                TextField("Enter player name", text: $playerName)
                    .textFieldStyle(.roundedBorder)
                    .font(.title3)
                    .padding(.horizontal)
                    .focused($isTextFieldFocused)
                    .submitLabel(.next)
                    .onSubmit {
                        addPlayer()
                    }
                
                if gameManager.players.count > 0 {
                    VStack(alignment: .leading, spacing: 10) {
                        HStack {
                            Text("Players Added:")
                                .font(.headline)
                            Spacer()
                            Text("\(gameManager.players.count) player\(gameManager.players.count == 1 ? "" : "s")")
                                .font(.caption)
                                .foregroundColor(.secondary)
                        }
                        .padding(.horizontal)
                        
                        ScrollView(.vertical, showsIndicators: true) {
                            LazyVStack(alignment: .leading, spacing: 8) {
                                ForEach(gameManager.players) { player in
                                    HStack(spacing: 12) {
                                        Button(action: {
                                            selectedPlayerId = player.id
                                        }) {
                                            Text(player.profileIcon)
                                                .font(.system(size: 32))
                                        }
                                        
                                        Text(player.name)
                                            .font(.body)
                                        
                                        Spacer()
                                        
                                        Button(action: {
                                            removePlayer(player)
                                        }) {
                                            Image(systemName: "xmark.circle.fill")
                                                .foregroundColor(.red)
                                                .font(.title3)
                                        }
                                        .buttonStyle(.plain)
                                    }
                                    .padding(.horizontal, 16)
                                    .padding(.vertical, 10)
                                    .background(Color(.systemGray6))
                                    .cornerRadius(8)
                                }
                            }
                            .padding(.horizontal)
                            .padding(.vertical, 8)
                        }
                        .frame(maxHeight: 450)
                        .background(Color(.systemBackground))
                        .cornerRadius(12)
                        .overlay(
                            RoundedRectangle(cornerRadius: 12)
                                .stroke(Color(.systemGray4), lineWidth: 1)
                        )
                    }
                }
            }
            .padding(.vertical, 10)
            
            Spacer()
            
            VStack(spacing: 15) {
                Button(action: {
                    addPlayer()
                }) {
                    Text("Add Player")
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(playerName.isEmpty ? Color.gray : Color.blue)
                        .cornerRadius(12)
                }
                .disabled(playerName.isEmpty)
                .padding(.horizontal)
                
                let minPlayers = gameManager.gameSettings.numberOfImposters + 1
                if gameManager.players.count >= minPlayers {
                    Button(action: {
                        gameManager.startGame()
                    }) {
                        Text("Start Game")
                            .font(.headline)
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.green)
                            .cornerRadius(12)
                    }
                    .padding(.horizontal)
                } else if gameManager.players.count > 0 {
                    Text("Add at least \(minPlayers - gameManager.players.count) more player\(minPlayers - gameManager.players.count == 1 ? "" : "s") (need at least \(minPlayers) total)")
                        .font(.caption)
                        .foregroundColor(.orange)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal)
                }
                
                Button(action: {
                    gameManager.currentStep = .category
                }) {
                    Text("Back")
                        .font(.headline)
                        .foregroundColor(.secondary)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color(.systemGray5))
                        .cornerRadius(12)
                }
                .padding(.horizontal)
                .padding(.bottom, 40)
            }
        }
        .background(Color(.systemBackground))
        .sheet(isPresented: Binding(
            get: { selectedPlayerId != nil },
            set: { if !$0 { selectedPlayerId = nil } }
        )) {
            if let playerId = selectedPlayerId,
               let player = gameManager.players.first(where: { $0.id == playerId }) {
                ProfilePictureSelectorView(selectedIcon: Binding(
                    get: {
                        gameManager.players.first(where: { $0.id == playerId })?.profileIcon ?? player.profileIcon
                    },
                    set: { newIcon in
                        if let index = gameManager.players.firstIndex(where: { $0.id == playerId }) {
                            gameManager.players[index].profileIcon = newIcon
                            selectedPlayerId = nil // Close sheet after selection
                        }
                    }
                ))
            }
        }
        .onAppear {
            // Add default players if list is empty
            if gameManager.players.isEmpty {
                let defaultPlayers: [(name: String, emoji: String)] = [
                    ("Linda", "🐈‍⬛"),    // Black cat
                    ("Teena", "🐨"),      // Koala
                    ("DShinny", "🐧"),     // Penguin
                    ("Chanha", "🃏"),     // Joker card
                    ("Patty", "🌠")        // Shooting Star
                ]
                for player in defaultPlayers {
                    var newPlayer = Player(name: player.name)
                    newPlayer.profileIcon = player.emoji
                    gameManager.players.append(newPlayer)
                }
            }
            isTextFieldFocused = true
        }
    }
    
    private func addPlayer() {
        guard !playerName.trimmingCharacters(in: .whitespaces).isEmpty else {
            return
        }
        
        let newPlayer = Player(name: playerName.trimmingCharacters(in: .whitespaces))
        gameManager.players.append(newPlayer)
        playerName = ""
        isTextFieldFocused = true
    }
    
    private func removePlayer(_ player: Player) {
        gameManager.players.removeAll { $0.id == player.id }
    }
}
