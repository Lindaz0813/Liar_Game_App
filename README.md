# Liar Game App
iOS App for Liars Game

A fun party game where players try to identify the liar among them. Built with SwiftUI for iOS.

## Game Flow

### 1st step: Game setup

- Buttons and sliders
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

### Step 1: Create Xcode Project

1. Open Xcode
2. Choose **File → New → Project** (or ⌘⇧N)
3. Select **iOS → App** and click **Next**
4. Configure the project:
   - **Product Name**: `LiarGameApp` (or any name you prefer)
   - **Team**: Select your development team (or "None" for personal use)
   - **Organization Identifier**: Your reverse domain (e.g., `com.yourname`)
   - **Bundle Identifier**: Will auto-generate
   - **Interface**: **SwiftUI**
   - **Language**: **Swift**
   - **Storage**: Choose if you want to use Core Data or CloudKit (select **None** for this app)
   - **Include Tests**: Optional

5. **Save Location**: Choose a different location than your current `Liar_Game_App` folder, OR:
   - If Xcode says the folder already exists and asks to move it to trash:
     - **Option A**: Click "Cancel", temporarily rename your current `Liar_Game_App` folder to something else (like `Liar_Game_App_Files`), then create the project
     - **Option B**: Accept moving to trash (you'll restore files next), then copy files from trash back
     - **Option C**: Choose a different save location for the Xcode project

6. Click **Create**

### Step 2: Add Files to Xcode Project

1. In Xcode, right-click on the project name in the Navigator (left sidebar)
2. Select **Add Files to "LiarGameApp"...**
3. Navigate to your `Liar_Game_App` folder
4. Select the following folders/files:
   - `Models/` folder (with all files inside)
   - `Views/` folder (with all files inside)
   - `LiarGameApp.swift`
   - `ContentView.swift`
5. **IMPORTANT**: Make sure these options are checked:
   - ✅ **Copy items if needed** (so files are copied into the Xcode project)
   - ✅ **Create groups** (not folder references)
   - ✅ Select your app target

6. Click **Add**

### Step 3: Replace Default App File

1. In Xcode, find the default `ContentView.swift` or `App.swift` that Xcode created
2. Delete it (Move to Trash)
3. Make sure your `LiarGameApp.swift` is set as the main file:
   - Check that `@main` attribute is on `LiarGameApp`
   - The file should be in the root of your project

### Step 4: Build and Run

1. Select a simulator or your device from the device menu (top bar)
2. Press **⌘R** or click the **Play** button
3. The app should build and run!

### Troubleshooting

- **If files are missing**: Check that all files are added to the target (select file → File Inspector → Target Membership)
- **If build errors**: Make sure iOS deployment target is 16.0+ (Project Settings → General → Deployment Info)
- **If "Cannot find type in scope"**: Check that all files are properly added to the project target

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