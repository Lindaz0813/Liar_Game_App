# Liar Game App
iOS App for Liars Game

A fun party game where players try to identify the liar among them. Built with SwiftUI for iOS.

## Game Flow

### 1st step: Game setup

- Buttons and ranges for 
    - # of players, 3-20, default 6
    - # of imposters, 1-4, default 2
    - checkbox for if imposter will have blank or an imposter word that is similar to true word

### 2nd step: Pick category

- Categories: League of Legends Champions, Valorant Champions, Food, Fruits 

### 3rd step: Input all player names

- Enter each player's name
- Game starts by showing all names lit up

### 4th step: Gameplay

- Pass around the phone
- Phone displays the word/liar after each player selects themselves
- After all names are selected, game starts

## Project Structure

```
Liar_Game_App/
├── LiarGameApp.swift          # App entry point
├── ContentView.swift          # Main navigation view
├── Models/
│   ├── GameManager.swift      # Game state management
│   ├── GameSettings.swift     # Game configuration
│   ├── Player.swift           # Player model
│   ├── Category.swift         # Category enum
│   └── WordList.swift         # Word lists for each category
└── Views/
    ├── GameSetupView.swift       # Step 1: Game setup
    ├── CategorySelectionView.swift # Step 2: Category selection
    ├── PlayerNameInputView.swift   # Step 3: Player name input
    ├── NamesDisplayView.swift      # Step 3: Display all names
    └── GamePlayView.swift          # Step 4: Gameplay
```

## Setup Instructions

1. Open Xcode
2. Create a new iOS App project:
   - Product Name: `LiarGameApp`
   - Interface: SwiftUI
   - Language: Swift
   - Minimum iOS version: iOS 16.0 or later

3. Replace the default files with the files from this project:
   - Copy all Swift files into your Xcode project
   - Maintain the folder structure (Models/, Views/)

4. Build and run the app on a simulator or device

## Requirements

- iOS 16.0+
- Xcode 14.0+
- Swift 5.7+

## Features

- ✅ Customizable number of players (3-20)
- ✅ Adjustable number of imposters (1-4)
- ✅ Option for blank or similar words for imposters
- ✅ Multiple categories with extensive word lists
- ✅ Player name input with validation
- ✅ Animated name display
- ✅ Player selection interface
- ✅ Clear indication of liar vs. regular players