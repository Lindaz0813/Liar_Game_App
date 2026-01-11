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
            
            Text("Player \(gameManager.players.count + 1) of \(gameManager.gameSettings.numberOfPlayers)")
                .font(.subheadline)
                .foregroundColor(.secondary)
            
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
                
                if gameManager.players.count == gameManager.gameSettings.numberOfPlayers {
                    Button(action: {
                        gameManager.currentStep = .namesDisplay
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
        guard !playerName.trimmingCharacters(in: .whitespaces).isEmpty,
              gameManager.players.count < gameManager.gameSettings.numberOfPlayers else {
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
