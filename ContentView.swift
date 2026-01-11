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
                case .namesDisplay:
                    NamesDisplayView()
                case .gameplay:
                    GamePlayView()
                }
            }
            .transition(.opacity)
            .animation(.easeInOut, value: gameManager.currentStep)
        }
    }
}
