# Liars - iOS Game App

A fun party game where players try to identify the liar among them. Built with SwiftUI for iOS.

## Quick Start

1. **Open the Project**:
   - Double-click `Liars.xcworkspace` (NOT the .xcodeproj file)
   - Or open Xcode and select **File → Open** and navigate to this folder, then select `Liars.xcworkspace`

2. **Build and Run**:
   - Select a simulator or your device from the device menu (top bar)
   - Press **⌘R** or click the **Play** button
   - The app should build and run!

## Project Structure

```
Liars/
├── Liars.xcworkspace/          # Workspace file (open this!)
├── Liars.xcodeproj/            # Xcode project file
└── Liars/                      # Source code folder
    ├── LiarsApp.swift          # App entry point
    ├── ContentView.swift       # Main navigation view
    ├── Models/                 # Data models
    │   ├── GameManager.swift
    │   ├── GameSettings.swift
    │   ├── Player.swift
    │   ├── Category.swift
    │   └── WordList.swift
    ├── Views/                  # SwiftUI views
    │   ├── GameSetupView.swift
    │   ├── CategorySelectionView.swift
    │   ├── PlayerNameInputView.swift
    │   ├── NamesDisplayView.swift
    │   └── GamePlayView.swift
    ├── Assets.xcassets/        # App icons and assets
    └── Preview Content/        # SwiftUI preview assets
```

## Game Flow

1. **Game Setup**: Configure number of players (3-20), imposters (1-4), and word type
2. **Category Selection**: Choose from League of Legends, Valorant, Food, or Fruits
3. **Player Names**: Enter all player names and see them displayed
4. **Gameplay**: Players select themselves and view their word or liar status

## Requirements

- iOS 16.0+
- Xcode 14.0+
- Swift 5.0+

## Configuration

The project is configured with:
- **Bundle Identifier**: `com.lindazhou.Liars` (update this in project settings if needed)
- **Deployment Target**: iOS 16.0
- **Swift Version**: 5.0

## Troubleshooting

- **"Cannot find type in scope"**: Make sure all files are included in the target (File Inspector → Target Membership)
- **Build errors**: Clean build folder (⌘⇧K) and rebuild (⌘B)
- **Workspace won't open**: Make sure you're opening `Liars.xcworkspace`, not `Liars.xcodeproj`
