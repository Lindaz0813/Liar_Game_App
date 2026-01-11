import SwiftUI

struct ContentView: View {
    @EnvironmentObject var gameManager: GameManager
    
    var body: some View {
        NavigationStack {
            Group {
                switch gameManager.currentStep {
                case .setup:
                    GameSetupView()
                case .category:
                    CategorySelectionView()
                case .playerNames:
                    PlayerNameInputView()
                case .gameplay:
                    GamePlayView()
                case .namesDisplay:
                    // This step is no longer used - kept for compatibility
                    EmptyView()
                }
            }
            .transition(.opacity)
            .animation(.easeInOut, value: gameManager.currentStep)
        }
    }
}
