import SwiftUI

struct NamesDisplayView: View {
    @EnvironmentObject var gameManager: GameManager
    @State private var showNames: Bool = false
    @State private var animateNames: Bool = false
    
    var body: some View {
        VStack(spacing: 30) {
            Text("All Players")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.top, 40)
            
            if showNames {
                ScrollView {
                    VStack(spacing: 20) {
                        ForEach(Array(gameManager.players.enumerated()), id: \.element.id) { index, player in
                            HStack {
                                Text("\(index + 1).")
                                    .font(.title3)
                                    .fontWeight(.semibold)
                                    .foregroundColor(.secondary)
                                    .frame(width: 40)
                                
                                Text(player.name)
                                    .font(.title2)
                                    .fontWeight(.semibold)
                                
                                Spacer()
                            }
                            .padding()
                            .background(
                                animateNames ?
                                Color.blue.opacity(0.3) : Color(.systemGray6)
                            )
                            .cornerRadius(12)
                            .scaleEffect(animateNames ? 1.05 : 1.0)
                            .animation(
                                .easeInOut(duration: 0.5)
                                .delay(Double(index) * 0.1),
                                value: animateNames
                            )
                        }
                    }
                    .padding(.horizontal)
                }
                
                Spacer()
                
                Button(action: {
                    gameManager.startGame()
                }) {
                    Text("Begin Game")
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.green)
                        .cornerRadius(12)
                }
                .padding(.horizontal)
                .padding(.bottom, 40)
            } else {
                Spacer()
                
                Text("Tap to reveal all player names")
                    .font(.headline)
                    .foregroundColor(.secondary)
                    .padding()
                
                Spacer()
                
                Button(action: {
                    withAnimation {
                        showNames = true
                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                            animateNames = true
                        }
                    }
                }) {
                    Text("Show Names")
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
        }
        .background(Color(.systemBackground))
    }
}
