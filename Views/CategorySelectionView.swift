import SwiftUI

struct CategorySelectionView: View {
    @EnvironmentObject var gameManager: GameManager
    
    var body: some View {
        VStack(spacing: 30) {
            Text("Select Category")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.top, 40)
            
            Text("Choose a category for the game")
                .font(.subheadline)
                .foregroundColor(.secondary)
            
            VStack(spacing: 20) {
                ForEach(Category.allCases, id: \.self) { category in
                    Button(action: {
                        gameManager.selectedCategory = category
                        gameManager.currentStep = .playerNames
                    }) {
                        HStack {
                            Text(category.displayName)
                                .font(.headline)
                                .foregroundColor(.primary)
                            Spacer()
                            Image(systemName: "chevron.right")
                                .foregroundColor(.secondary)
                        }
                        .padding()
                        .background(
                            gameManager.selectedCategory == category ?
                            Color.blue.opacity(0.2) : Color(.systemGray6)
                        )
                        .cornerRadius(12)
                    }
                    .buttonStyle(.plain)
                }
            }
            .padding(.horizontal)
            
            Spacer()
            
            Button(action: {
                gameManager.currentStep = .setup
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
        .background(Color(.systemBackground))
    }
}
