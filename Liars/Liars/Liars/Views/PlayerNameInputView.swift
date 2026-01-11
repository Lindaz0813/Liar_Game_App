import SwiftUI

struct PlayerNameInputView: View {
    @EnvironmentObject var gameManager: GameManager
    @State private var playerName: String = ""
    @FocusState private var isTextFieldFocused: Bool
    
    var body: some View {
        VStack(spacing: 30) {
            Text("Enter Player Names")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.top, 40)
            
            Text("Add Players")
                .font(.subheadline)
                .foregroundColor(.secondary)
            
            if gameManager.players.count > 0 {
                Text("\(gameManager.players.count) player\(gameManager.players.count == 1 ? "" : "s") added")
                    .font(.caption)
                    .foregroundColor(.secondary)
            }
            
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
                        Text("Players Added:")
                            .font(.headline)
                            .padding(.horizontal)
                        
                        ScrollView {
                            VStack(alignment: .leading, spacing: 8) {
                                ForEach(gameManager.players) { player in
                                    HStack {
                                        Text(player.name)
                                            .font(.body)
                                        Spacer()
                                        Button(action: {
                                            removePlayer(player)
                                        }) {
                                            Image(systemName: "xmark.circle.fill")
                                                .foregroundColor(.red)
                                        }
                                    }
                                    .padding(.horizontal)
                                    .padding(.vertical, 8)
                                    .background(Color(.systemGray6))
                                    .cornerRadius(8)
                                }
                            }
                            .padding(.horizontal)
                        }
                        .frame(maxHeight: 200)
                    }
                }
            }
            
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
        .onAppear {
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
