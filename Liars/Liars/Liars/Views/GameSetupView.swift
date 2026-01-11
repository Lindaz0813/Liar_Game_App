import SwiftUI

struct GameSetupView: View {
    @EnvironmentObject var gameManager: GameManager
    
    var body: some View {
        VStack(spacing: 30) {
            Text("Game Setup")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.top, 40)
            
            VStack(alignment: .leading, spacing: 25) {
                // Number of Imposters
                VStack(alignment: .leading, spacing: 10) {
                    Text("Number of Imposters")
                        .font(.headline)
                    Text("\(gameManager.gameSettings.numberOfImposters)")
                        .font(.title2)
                        .fontWeight(.semibold)
                    Slider(
                        value: Binding(
                            get: { Double(gameManager.gameSettings.numberOfImposters) },
                            set: { gameManager.gameSettings.numberOfImposters = Int($0) }
                        ),
                        in: 1.0...4.0,
                        step: 1
                    )
                }
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(12)
                
                // Imposter Word Type
                VStack(alignment: .leading, spacing: 10) {
                    Text("Imposter Word Type")
                        .font(.headline)
                    Toggle(isOn: $gameManager.gameSettings.useSimilarWord) {
                        VStack(alignment: .leading, spacing: 4) {
                            Text(gameManager.gameSettings.useSimilarWord ? "Similar Word" : "Blank Word")
                                .font(.body)
                            Text(gameManager.gameSettings.useSimilarWord ?
                                 "Imposters get a similar word" :
                                 "Imposters get a blank word")
                                .font(.caption)
                                .foregroundColor(.secondary)
                        }
                    }
                }
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(12)
            }
            .padding(.horizontal)
            
            Spacer()
            
            Button(action: {
                gameManager.currentStep = .category
            }) {
                Text("Continue")
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
        .background(Color(.systemBackground))
    }
}
