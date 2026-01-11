import Foundation

struct WordList {
    // League of Legends Champions with features
    // Features: [lane (top/middle/bottom/support/jungle), damage_type (AP/AD/Hybrid), gender_type (Male/Female/Animal/Monster/Other), class (Tank/Assassin/Mage/Fighter/Marksman/Support), trait (Mobile/Ranged/Melee/Healer/CC_Heavy/etc)]
    static let leagueOfLegendsWords: [WordWithFeatures] = [
        WordWithFeatures(word: "Aatrox", features: ["top", "AD", "Male", "Fighter", "Melee"]),
        WordWithFeatures(word: "Ahri", features: ["middle", "AP", "Female", "Mage", "Mobile"]),
        WordWithFeatures(word: "Akali", features: ["middle", "AP", "Female", "Assassin", "Mobile"]),
        WordWithFeatures(word: "Akshan", features: ["middle", "AD", "Male", "Marksman", "Ranged"]),
        WordWithFeatures(word: "Alistar", features: ["support", "AP", "Animal", "Tank", "CC_Heavy"]),
        WordWithFeatures(word: "Amumu", features: ["jungle", "AP", "Monster", "Tank", "CC_Heavy"]),
        WordWithFeatures(word: "Anivia", features: ["middle", "AP", "Animal", "Mage", "Ranged"]),
        WordWithFeatures(word: "Annie", features: ["middle", "AP", "Female", "Mage", "Ranged"]),
        WordWithFeatures(word: "Aphelios", features: ["bottom", "AD", "Male", "Marksman", "Ranged"]),
        WordWithFeatures(word: "Ashe", features: ["bottom", "AD", "Female", "Marksman", "Ranged"]),
        WordWithFeatures(word: "Aurelion Sol", features: ["middle", "AP", "Monster", "Mage", "Ranged"]),
        WordWithFeatures(word: "Azir", features: ["middle", "AP", "Male", "Mage", "Ranged"]),
        WordWithFeatures(word: "Bard", features: ["support", "AP", "Other", "Support", "Mobile"]),
        WordWithFeatures(word: "Bel'Veth", features: ["jungle", "AD", "Monster", "Fighter", "Melee"]),
        WordWithFeatures(word: "Blitzcrank", features: ["support", "AP", "Monster", "Tank", "CC_Heavy"]),
        WordWithFeatures(word: "Brand", features: ["middle", "AP", "Male", "Mage", "Ranged"]),
        WordWithFeatures(word: "Braum", features: ["support", "AP", "Male", "Tank", "CC_Heavy"]),
        WordWithFeatures(word: "Caitlyn", features: ["bottom", "AD", "Female", "Marksman", "Ranged"]),
        WordWithFeatures(word: "Camille", features: ["top", "AD", "Female", "Fighter", "Mobile"]),
        WordWithFeatures(word: "Cassiopeia", features: ["middle", "AP", "Female", "Mage", "Ranged"]),
        WordWithFeatures(word: "Cho'Gath", features: ["top", "AP", "Monster", "Tank", "Melee"]),
        WordWithFeatures(word: "Corki", features: ["middle", "Hybrid", "Male", "Marksman", "Ranged"]),
        WordWithFeatures(word: "Darius", features: ["top", "AD", "Male", "Fighter", "Melee"]),
        WordWithFeatures(word: "Diana", features: ["jungle", "AP", "Female", "Fighter", "Melee"]),
        WordWithFeatures(word: "Draven", features: ["bottom", "AD", "Male", "Marksman", "Ranged"]),
        WordWithFeatures(word: "Dr. Mundo", features: ["top", "AD", "Male", "Tank", "Melee"]),
        WordWithFeatures(word: "Ekko", features: ["jungle", "AP", "Male", "Assassin", "Mobile"]),
        WordWithFeatures(word: "Elise", features: ["jungle", "AP", "Female", "Mage", "Mobile"]),
        WordWithFeatures(word: "Evelynn", features: ["jungle", "AP", "Female", "Assassin", "Mobile"]),
        WordWithFeatures(word: "Ezreal", features: ["bottom", "Hybrid", "Male", "Marksman", "Ranged"]),
        WordWithFeatures(word: "Fiddlesticks", features: ["jungle", "AP", "Monster", "Mage", "CC_Heavy"]),
        WordWithFeatures(word: "Fiora", features: ["top", "AD", "Female", "Fighter", "Melee"]),
        WordWithFeatures(word: "Fizz", features: ["middle", "AP", "Male", "Assassin", "Mobile"]),
        WordWithFeatures(word: "Galio", features: ["middle", "AP", "Monster", "Tank", "CC_Heavy"]),
        WordWithFeatures(word: "Gangplank", features: ["top", "AD", "Male", "Fighter", "Ranged"]),
        WordWithFeatures(word: "Garen", features: ["top", "AD", "Male", "Fighter", "Melee"]),
        WordWithFeatures(word: "Gnar", features: ["top", "AD", "Animal", "Fighter", "Mobile"]),
        WordWithFeatures(word: "Gragas", features: ["jungle", "AP", "Male", "Fighter", "Melee"]),
        WordWithFeatures(word: "Graves", features: ["jungle", "AD", "Male", "Marksman", "Ranged"]),
        WordWithFeatures(word: "Gwen", features: ["top", "AP", "Female", "Fighter", "Melee"]),
        WordWithFeatures(word: "Hecarim", features: ["jungle", "AD", "Animal", "Fighter", "Mobile"]),
        WordWithFeatures(word: "Heimerdinger", features: ["middle", "AP", "Male", "Mage", "Ranged"]),
        WordWithFeatures(word: "Hwei", features: ["middle", "AP", "Male", "Mage", "Ranged"]),
        WordWithFeatures(word: "Illaoi", features: ["top", "AD", "Female", "Fighter", "Melee"]),
        WordWithFeatures(word: "Irelia", features: ["top", "AD", "Female", "Fighter", "Mobile"]),
        WordWithFeatures(word: "Ivern", features: ["jungle", "AP", "Male", "Support", "Healer"]),
        WordWithFeatures(word: "Janna", features: ["support", "AP", "Female", "Support", "Healer"]),
        WordWithFeatures(word: "Jarvan IV", features: ["jungle", "AD", "Male", "Tank", "Melee"]),
        WordWithFeatures(word: "Jax", features: ["top", "AD", "Male", "Fighter", "Melee"]),
        WordWithFeatures(word: "Jayce", features: ["top", "AD", "Male", "Fighter", "Ranged"]),
        WordWithFeatures(word: "Jhin", features: ["bottom", "AD", "Male", "Marksman", "Ranged"]),
        WordWithFeatures(word: "Jinx", features: ["bottom", "AD", "Female", "Marksman", "Ranged"]),
        WordWithFeatures(word: "K'Sante", features: ["top", "AD", "Male", "Tank", "Melee"]),
        WordWithFeatures(word: "Kai'Sa", features: ["bottom", "Hybrid", "Female", "Marksman", "Ranged"]),
        WordWithFeatures(word: "Kalista", features: ["bottom", "AD", "Female", "Marksman", "Mobile"]),
        WordWithFeatures(word: "Karma", features: ["support", "AP", "Female", "Mage", "Healer"]),
        WordWithFeatures(word: "Karthus", features: ["jungle", "AP", "Male", "Mage", "Ranged"]),
        WordWithFeatures(word: "Kassadin", features: ["middle", "AP", "Male", "Assassin", "Mobile"]),
        WordWithFeatures(word: "Katarina", features: ["middle", "AP", "Female", "Assassin", "Mobile"]),
        WordWithFeatures(word: "Kayle", features: ["top", "Hybrid", "Female", "Fighter", "Ranged"]),
        WordWithFeatures(word: "Kayn", features: ["jungle", "AD", "Male", "Assassin", "Mobile"]),
        WordWithFeatures(word: "Kennen", features: ["top", "AP", "Male", "Mage", "Ranged"]),
        WordWithFeatures(word: "Kha'Zix", features: ["jungle", "AD", "Monster", "Assassin", "Mobile"]),
        WordWithFeatures(word: "Kindred", features: ["jungle", "AD", "Other", "Marksman", "Ranged"]),
        WordWithFeatures(word: "Kled", features: ["top", "AD", "Male", "Fighter", "Melee"]),
        WordWithFeatures(word: "Kog'Maw", features: ["bottom", "Hybrid", "Monster", "Marksman", "Ranged"]),
        WordWithFeatures(word: "LeBlanc", features: ["middle", "AP", "Female", "Assassin", "Mobile"]),
        WordWithFeatures(word: "Lee Sin", features: ["jungle", "AD", "Male", "Fighter", "Mobile"]),
        WordWithFeatures(word: "Leona", features: ["support", "AP", "Female", "Tank", "CC_Heavy"]),
        WordWithFeatures(word: "Lillia", features: ["jungle", "AP", "Animal", "Mage", "Mobile"]),
        WordWithFeatures(word: "Lissandra", features: ["middle", "AP", "Female", "Mage", "CC_Heavy"]),
        WordWithFeatures(word: "Lucian", features: ["bottom", "AD", "Male", "Marksman", "Ranged"]),
        WordWithFeatures(word: "Lulu", features: ["support", "AP", "Female", "Support", "Healer"]),
        WordWithFeatures(word: "Lux", features: ["middle", "AP", "Female", "Mage", "Ranged"]),
        WordWithFeatures(word: "Malphite", features: ["top", "AP", "Monster", "Tank", "Melee"]),
        WordWithFeatures(word: "Malzahar", features: ["middle", "AP", "Male", "Mage", "Ranged"]),
        WordWithFeatures(word: "Maokai", features: ["top", "AP", "Monster", "Tank", "CC_Heavy"]),
        WordWithFeatures(word: "Master Yi", features: ["jungle", "AD", "Male", "Assassin", "Melee"]),
        WordWithFeatures(word: "Milio", features: ["support", "AP", "Male", "Support", "Healer"]),
        WordWithFeatures(word: "Miss Fortune", features: ["bottom", "AD", "Female", "Marksman", "Ranged"]),
        WordWithFeatures(word: "Mordekaiser", features: ["top", "AP", "Male", "Fighter", "Melee"]),
        WordWithFeatures(word: "Morgana", features: ["support", "AP", "Female", "Mage", "CC_Heavy"]),
        WordWithFeatures(word: "Naafiri", features: ["middle", "AD", "Animal", "Assassin", "Melee"]),
        WordWithFeatures(word: "Nami", features: ["support", "AP", "Female", "Support", "Healer"]),
        WordWithFeatures(word: "Nasus", features: ["top", "AD", "Animal", "Fighter", "Melee"]),
        WordWithFeatures(word: "Nautilus", features: ["support", "AP", "Monster", "Tank", "CC_Heavy"]),
        WordWithFeatures(word: "Neeko", features: ["middle", "AP", "Female", "Mage", "Ranged"]),
        WordWithFeatures(word: "Nidalee", features: ["jungle", "AP", "Female", "Assassin", "Mobile"]),
        WordWithFeatures(word: "Nilah", features: ["bottom", "AD", "Female", "Fighter", "Melee"]),
        WordWithFeatures(word: "Nocturne", features: ["jungle", "AD", "Monster", "Assassin", "Mobile"]),
        WordWithFeatures(word: "Nunu & Willump", features: ["jungle", "AP", "Male", "Tank", "Melee"]),
        WordWithFeatures(word: "Olaf", features: ["top", "AD", "Male", "Fighter", "Melee"]),
        WordWithFeatures(word: "Orianna", features: ["middle", "AP", "Female", "Mage", "Ranged"]),
        WordWithFeatures(word: "Ornn", features: ["top", "AD", "Male", "Tank", "Melee"]),
        WordWithFeatures(word: "Pantheon", features: ["middle", "AD", "Male", "Fighter", "Melee"]),
        WordWithFeatures(word: "Poppy", features: ["top", "AD", "Female", "Tank", "Melee"]),
        WordWithFeatures(word: "Pyke", features: ["support", "AD", "Male", "Assassin", "Mobile"]),
        WordWithFeatures(word: "Qiyana", features: ["middle", "AD", "Female", "Assassin", "Mobile"]),
        WordWithFeatures(word: "Quinn", features: ["top", "AD", "Female", "Marksman", "Ranged"]),
        WordWithFeatures(word: "Rakan", features: ["support", "AP", "Male", "Support", "Mobile"]),
        WordWithFeatures(word: "Rammus", features: ["jungle", "AD", "Animal", "Tank", "Melee"]),
        WordWithFeatures(word: "Rek'Sai", features: ["jungle", "AD", "Monster", "Fighter", "Melee"]),
        WordWithFeatures(word: "Rell", features: ["support", "AP", "Female", "Tank", "CC_Heavy"]),
        WordWithFeatures(word: "Renata Glasc", features: ["support", "AP", "Female", "Support", "CC_Heavy"]),
        WordWithFeatures(word: "Renekton", features: ["top", "AD", "Animal", "Fighter", "Melee"]),
        WordWithFeatures(word: "Rengar", features: ["jungle", "AD", "Animal", "Assassin", "Melee"]),
        WordWithFeatures(word: "Riven", features: ["top", "AD", "Female", "Fighter", "Mobile"]),
        WordWithFeatures(word: "Rumble", features: ["top", "AP", "Male", "Fighter", "Melee"]),
        WordWithFeatures(word: "Ryze", features: ["middle", "AP", "Male", "Mage", "Ranged"]),
        WordWithFeatures(word: "Samira", features: ["bottom", "AD", "Female", "Marksman", "Ranged"]),
        WordWithFeatures(word: "Sejuani", features: ["jungle", "AP", "Female", "Tank", "CC_Heavy"]),
        WordWithFeatures(word: "Senna", features: ["support", "AD", "Female", "Marksman", "Ranged"]),
        WordWithFeatures(word: "Seraphine", features: ["support", "AP", "Female", "Mage", "Healer"]),
        WordWithFeatures(word: "Sett", features: ["top", "AD", "Male", "Fighter", "Melee"]),
        WordWithFeatures(word: "Shaco", features: ["jungle", "AD", "Male", "Assassin", "Mobile"]),
        WordWithFeatures(word: "Shen", features: ["top", "AD", "Male", "Tank", "Melee"]),
        WordWithFeatures(word: "Shyvana", features: ["jungle", "AP", "Female", "Fighter", "Melee"]),
        WordWithFeatures(word: "Singed", features: ["top", "AP", "Male", "Tank", "Melee"]),
        WordWithFeatures(word: "Sion", features: ["top", "AD", "Male", "Tank", "Melee"]),
        WordWithFeatures(word: "Sivir", features: ["bottom", "AD", "Female", "Marksman", "Ranged"]),
        WordWithFeatures(word: "Skarner", features: ["jungle", "AD", "Monster", "Fighter", "Melee"]),
        WordWithFeatures(word: "Sona", features: ["support", "AP", "Female", "Support", "Healer"]),
        WordWithFeatures(word: "Soraka", features: ["support", "AP", "Female", "Support", "Healer"]),
        WordWithFeatures(word: "Swain", features: ["support", "AP", "Male", "Mage", "Ranged"]),
        WordWithFeatures(word: "Sylas", features: ["middle", "AP", "Male", "Mage", "Melee"]),
        WordWithFeatures(word: "Syndra", features: ["middle", "AP", "Female", "Mage", "Ranged"]),
        WordWithFeatures(word: "Tahm Kench", features: ["support", "AP", "Monster", "Tank", "Melee"]),
        WordWithFeatures(word: "Taliyah", features: ["jungle", "AP", "Female", "Mage", "Ranged"]),
        WordWithFeatures(word: "Talon", features: ["middle", "AD", "Male", "Assassin", "Mobile"]),
        WordWithFeatures(word: "Taric", features: ["support", "AP", "Male", "Support", "Healer"]),
        WordWithFeatures(word: "Teemo", features: ["top", "AP", "Male", "Marksman", "Ranged"]),
        WordWithFeatures(word: "Thresh", features: ["support", "AP", "Monster", "Support", "CC_Heavy"]),
        WordWithFeatures(word: "Tristana", features: ["bottom", "AD", "Female", "Marksman", "Ranged"]),
        WordWithFeatures(word: "Trundle", features: ["top", "AD", "Male", "Fighter", "Melee"]),
        WordWithFeatures(word: "Tryndamere", features: ["top", "AD", "Male", "Fighter", "Melee"]),
        WordWithFeatures(word: "Twisted Fate", features: ["middle", "AP", "Male", "Mage", "Ranged"]),
        WordWithFeatures(word: "Twitch", features: ["bottom", "AD", "Animal", "Marksman", "Ranged"]),
        WordWithFeatures(word: "Udyr", features: ["jungle", "Hybrid", "Male", "Fighter", "Melee"]),
        WordWithFeatures(word: "Urgot", features: ["top", "AD", "Male", "Fighter", "Ranged"]),
        WordWithFeatures(word: "Varus", features: ["bottom", "AD", "Male", "Marksman", "Ranged"]),
        WordWithFeatures(word: "Vayne", features: ["bottom", "AD", "Female", "Marksman", "Ranged"]),
        WordWithFeatures(word: "Veigar", features: ["middle", "AP", "Male", "Mage", "Ranged"]),
        WordWithFeatures(word: "Vel'Koz", features: ["middle", "AP", "Monster", "Mage", "Ranged"]),
        WordWithFeatures(word: "Vex", features: ["middle", "AP", "Female", "Mage", "Ranged"]),
        WordWithFeatures(word: "Vi", features: ["jungle", "AD", "Female", "Fighter", "Melee"]),
        WordWithFeatures(word: "Viego", features: ["jungle", "AD", "Male", "Assassin", "Mobile"]),
        WordWithFeatures(word: "Viktor", features: ["middle", "AP", "Male", "Mage", "Ranged"]),
        WordWithFeatures(word: "Vladimir", features: ["middle", "AP", "Male", "Mage", "Ranged"]),
        WordWithFeatures(word: "Volibear", features: ["top", "AD", "Animal", "Fighter", "Melee"]),
        WordWithFeatures(word: "Warwick", features: ["jungle", "AD", "Animal", "Fighter", "Melee"]),
        WordWithFeatures(word: "Wukong", features: ["top", "AD", "Male", "Fighter", "Melee"]),
        WordWithFeatures(word: "Xayah", features: ["bottom", "AD", "Female", "Marksman", "Ranged"]),
        WordWithFeatures(word: "Xerath", features: ["middle", "AP", "Male", "Mage", "Ranged"]),
        WordWithFeatures(word: "Xin Zhao", features: ["jungle", "AD", "Male", "Fighter", "Melee"]),
        WordWithFeatures(word: "Yasuo", features: ["middle", "AD", "Male", "Fighter", "Melee"]),
        WordWithFeatures(word: "Yone", features: ["middle", "AD", "Male", "Fighter", "Melee"]),
        WordWithFeatures(word: "Yorick", features: ["top", "AD", "Male", "Fighter", "Melee"]),
        WordWithFeatures(word: "Yuumi", features: ["support", "AP", "Animal", "Support", "Healer"]),
        WordWithFeatures(word: "Zac", features: ["jungle", "AP", "Monster", "Tank", "CC_Heavy"]),
        WordWithFeatures(word: "Zed", features: ["middle", "AD", "Male", "Assassin", "Mobile"]),
        WordWithFeatures(word: "Zeri", features: ["bottom", "AD", "Female", "Marksman", "Ranged"]),
        WordWithFeatures(word: "Ziggs", features: ["middle", "AP", "Male", "Mage", "Ranged"]),
        WordWithFeatures(word: "Zilean", features: ["support", "AP", "Male", "Support", "Healer"]),
        WordWithFeatures(word: "Zoe", features: ["middle", "AP", "Female", "Mage", "Ranged"]),
        WordWithFeatures(word: "Zyra", features: ["support", "AP", "Female", "Mage", "CC_Heavy"])
    ]
    
    // Valorant Champions with features
    // Features: [role (Duelist/Initiator/Controller/Sentinel), origin (Earth/Radianite/etc), gender (Male/Female/Other), weapon_type (Rifle/Pistol/Shotgun/etc), ability_type (Flash/Heal/Smoke/etc)]
    static let valorantWords: [WordWithFeatures] = [
        WordWithFeatures(word: "Astra", features: ["Controller", "Ghana", "Female", "Rifle", "Smoke"]),
        WordWithFeatures(word: "Breach", features: ["Initiator", "Sweden", "Male", "Rifle", "Flash"]),
        WordWithFeatures(word: "Brimstone", features: ["Controller", "USA", "Male", "Rifle", "Smoke"]),
        WordWithFeatures(word: "Chamber", features: ["Sentinel", "France", "Male", "Sniper", "Teleport"]),
        WordWithFeatures(word: "Cypher", features: ["Sentinel", "Morocco", "Male", "Rifle", "Camera"]),
        WordWithFeatures(word: "Deadlock", features: ["Sentinel", "Norway", "Female", "Rifle", "Trap"]),
        WordWithFeatures(word: "Fade", features: ["Initiator", "Turkey", "Female", "Rifle", "Reveal"]),
        WordWithFeatures(word: "Gekko", features: ["Initiator", "USA", "Male", "Rifle", "Flash"]),
        WordWithFeatures(word: "Harbor", features: ["Controller", "India", "Male", "Rifle", "Smoke"]),
        WordWithFeatures(word: "Iso", features: ["Duelist", "China", "Male", "Rifle", "Shield"]),
        WordWithFeatures(word: "Jett", features: ["Duelist", "South_Korea", "Female", "Rifle", "Dash"]),
        WordWithFeatures(word: "KAY/O", features: ["Initiator", "Machine", "Other", "Rifle", "Suppress"]),
        WordWithFeatures(word: "Killjoy", features: ["Sentinel", "Germany", "Female", "Rifle", "Trap"]),
        WordWithFeatures(word: "Neon", features: ["Duelist", "Philippines", "Female", "Rifle", "Dash"]),
        WordWithFeatures(word: "Omen", features: ["Controller", "Shadow", "Other", "Rifle", "Teleport"]),
        WordWithFeatures(word: "Phoenix", features: ["Duelist", "UK", "Male", "Rifle", "Flash"]),
        WordWithFeatures(word: "Raze", features: ["Duelist", "Brazil", "Female", "Rifle", "Explosive"]),
        WordWithFeatures(word: "Reyna", features: ["Duelist", "Mexico", "Female", "Rifle", "Heal"]),
        WordWithFeatures(word: "Sage", features: ["Sentinel", "China", "Female", "Rifle", "Heal"]),
        WordWithFeatures(word: "Skye", features: ["Initiator", "Australia", "Female", "Rifle", "Flash"]),
        WordWithFeatures(word: "Sova", features: ["Initiator", "Russia", "Male", "Sniper", "Reveal"]),
        WordWithFeatures(word: "Viper", features: ["Controller", "USA", "Female", "Rifle", "Poison"]),
        WordWithFeatures(word: "Yoru", features: ["Duelist", "Japan", "Male", "Rifle", "Teleport"])
    ]
    
    // Food items with features
    // Features: [type (Main/Side/Dessert/Snack/Beverage/Ingredient), cuisine (Italian/American/Asian/etc), temperature (Hot/Cold/Room), texture (Soft/Crispy/Smooth/etc), meal_time (Breakfast/Lunch/Dinner/Anytime)]
    static let foodWords: [WordWithFeatures] = [
        WordWithFeatures(word: "Pizza", features: ["Main", "Italian", "Hot", "Soft", "Dinner"]),
        WordWithFeatures(word: "Burger", features: ["Main", "American", "Hot", "Soft", "Lunch"]),
        WordWithFeatures(word: "Sushi", features: ["Main", "Asian", "Cold", "Soft", "Lunch"]),
        WordWithFeatures(word: "Pasta", features: ["Main", "Italian", "Hot", "Soft", "Dinner"]),
        WordWithFeatures(word: "Tacos", features: ["Main", "Mexican", "Hot", "Crispy", "Dinner"]),
        WordWithFeatures(word: "Ramen", features: ["Main", "Asian", "Hot", "Soft", "Lunch"]),
        WordWithFeatures(word: "Steak", features: ["Main", "American", "Hot", "Tender", "Dinner"]),
        WordWithFeatures(word: "Sandwich", features: ["Main", "American", "Room", "Soft", "Lunch"]),
        WordWithFeatures(word: "Salad", features: ["Side", "American", "Cold", "Crispy", "Lunch"]),
        WordWithFeatures(word: "Soup", features: ["Main", "Universal", "Hot", "Smooth", "Lunch"]),
        WordWithFeatures(word: "Curry", features: ["Main", "Asian", "Hot", "Smooth", "Dinner"]),
        WordWithFeatures(word: "Rice", features: ["Side", "Asian", "Hot", "Soft", "Dinner"]),
        WordWithFeatures(word: "Noodles", features: ["Main", "Asian", "Hot", "Soft", "Lunch"]),
        WordWithFeatures(word: "Burrito", features: ["Main", "Mexican", "Hot", "Soft", "Lunch"]),
        WordWithFeatures(word: "Fried Chicken", features: ["Main", "American", "Hot", "Crispy", "Dinner"]),
        WordWithFeatures(word: "Hot Dog", features: ["Main", "American", "Hot", "Soft", "Lunch"]),
        WordWithFeatures(word: "Ice Cream", features: ["Dessert", "Universal", "Cold", "Smooth", "Anytime"]),
        WordWithFeatures(word: "Donuts", features: ["Dessert", "American", "Room", "Soft", "Breakfast"]),
        WordWithFeatures(word: "Cake", features: ["Dessert", "Universal", "Room", "Soft", "Dinner"]),
        WordWithFeatures(word: "Cookie", features: ["Snack", "American", "Room", "Crispy", "Anytime"]),
        WordWithFeatures(word: "Bread", features: ["Side", "Universal", "Room", "Soft", "Breakfast"]),
        WordWithFeatures(word: "Cheese", features: ["Ingredient", "Universal", "Room", "Soft", "Anytime"]),
        WordWithFeatures(word: "Butter", features: ["Ingredient", "Universal", "Room", "Smooth", "Breakfast"]),
        WordWithFeatures(word: "Milk", features: ["Beverage", "Universal", "Cold", "Smooth", "Breakfast"]),
        WordWithFeatures(word: "Eggs", features: ["Main", "Universal", "Hot", "Soft", "Breakfast"]),
        WordWithFeatures(word: "Bacon", features: ["Side", "American", "Hot", "Crispy", "Breakfast"]),
        WordWithFeatures(word: "Sausage", features: ["Main", "American", "Hot", "Soft", "Breakfast"]),
        WordWithFeatures(word: "Ham", features: ["Main", "Universal", "Room", "Soft", "Lunch"]),
        WordWithFeatures(word: "Turkey", features: ["Main", "American", "Hot", "Tender", "Dinner"]),
        WordWithFeatures(word: "Fish", features: ["Main", "Universal", "Hot", "Tender", "Dinner"]),
        WordWithFeatures(word: "Shrimp", features: ["Main", "Universal", "Hot", "Tender", "Dinner"]),
        WordWithFeatures(word: "Lobster", features: ["Main", "American", "Hot", "Tender", "Dinner"]),
        WordWithFeatures(word: "Crab", features: ["Main", "Universal", "Hot", "Tender", "Dinner"]),
        WordWithFeatures(word: "Oyster", features: ["Main", "Universal", "Cold", "Soft", "Dinner"]),
        WordWithFeatures(word: "Mushroom", features: ["Ingredient", "Universal", "Hot", "Soft", "Dinner"]),
        WordWithFeatures(word: "Potato", features: ["Side", "Universal", "Hot", "Soft", "Dinner"]),
        WordWithFeatures(word: "Carrot", features: ["Ingredient", "Universal", "Room", "Crispy", "Lunch"]),
        WordWithFeatures(word: "Broccoli", features: ["Side", "Universal", "Hot", "Crispy", "Dinner"]),
        WordWithFeatures(word: "Spinach", features: ["Side", "Universal", "Hot", "Soft", "Dinner"]),
        WordWithFeatures(word: "Lettuce", features: ["Ingredient", "Universal", "Cold", "Crispy", "Lunch"]),
        WordWithFeatures(word: "Tomato", features: ["Ingredient", "Universal", "Room", "Soft", "Lunch"]),
        WordWithFeatures(word: "Onion", features: ["Ingredient", "Universal", "Hot", "Crispy", "Dinner"]),
        WordWithFeatures(word: "Garlic", features: ["Ingredient", "Universal", "Hot", "Soft", "Dinner"]),
        WordWithFeatures(word: "Pepper", features: ["Ingredient", "Universal", "Room", "Crispy", "Dinner"]),
        WordWithFeatures(word: "Salt", features: ["Ingredient", "Universal", "Room", "Crystalline", "Anytime"]),
        WordWithFeatures(word: "Sugar", features: ["Ingredient", "Universal", "Room", "Crystalline", "Anytime"]),
        WordWithFeatures(word: "Honey", features: ["Ingredient", "Universal", "Room", "Smooth", "Anytime"]),
        WordWithFeatures(word: "Olive Oil", features: ["Ingredient", "Mediterranean", "Room", "Smooth", "Anytime"]),
        WordWithFeatures(word: "Vinegar", features: ["Ingredient", "Universal", "Room", "Liquid", "Anytime"]),
        WordWithFeatures(word: "Soy Sauce", features: ["Ingredient", "Asian", "Room", "Liquid", "Dinner"]),
        WordWithFeatures(word: "Ketchup", features: ["Ingredient", "American", "Room", "Smooth", "Anytime"]),
        WordWithFeatures(word: "Mustard", features: ["Ingredient", "Universal", "Room", "Smooth", "Anytime"]),
        WordWithFeatures(word: "Mayonnaise", features: ["Ingredient", "Universal", "Room", "Smooth", "Anytime"])
    ]
    
    // Fruits with features
    // Features: [color (Red/Orange/Yellow/Green/Purple/Brown/Multi), size (Small/Medium/Large), texture (Smooth/Rough/Soft/Hard), taste (Sweet/Sour/Bitter/Mild), season (Summer/Winter/Year_Round)]
    static let fruitsWords: [WordWithFeatures] = [
        WordWithFeatures(word: "Apple", features: ["Red", "Medium", "Smooth", "Sweet", "Year_Round"]),
        WordWithFeatures(word: "Banana", features: ["Yellow", "Medium", "Smooth", "Sweet", "Year_Round"]),
        WordWithFeatures(word: "Orange", features: ["Orange", "Medium", "Rough", "Sweet", "Winter"]),
        WordWithFeatures(word: "Strawberry", features: ["Red", "Small", "Rough", "Sweet", "Summer"]),
        WordWithFeatures(word: "Grape", features: ["Purple", "Small", "Smooth", "Sweet", "Year_Round"]),
        WordWithFeatures(word: "Watermelon", features: ["Green", "Large", "Smooth", "Sweet", "Summer"]),
        WordWithFeatures(word: "Pineapple", features: ["Yellow", "Large", "Rough", "Sweet", "Year_Round"]),
        WordWithFeatures(word: "Mango", features: ["Orange", "Medium", "Smooth", "Sweet", "Summer"]),
        WordWithFeatures(word: "Kiwi", features: ["Brown", "Small", "Rough", "Sweet", "Year_Round"]),
        WordWithFeatures(word: "Peach", features: ["Orange", "Medium", "Smooth", "Sweet", "Summer"]),
        WordWithFeatures(word: "Pear", features: ["Green", "Medium", "Smooth", "Sweet", "Year_Round"]),
        WordWithFeatures(word: "Cherry", features: ["Red", "Small", "Smooth", "Sweet", "Summer"]),
        WordWithFeatures(word: "Plum", features: ["Purple", "Small", "Smooth", "Sweet", "Summer"]),
        WordWithFeatures(word: "Apricot", features: ["Orange", "Small", "Smooth", "Sweet", "Summer"]),
        WordWithFeatures(word: "Blueberry", features: ["Purple", "Small", "Smooth", "Sweet", "Summer"]),
        WordWithFeatures(word: "Raspberry", features: ["Red", "Small", "Rough", "Sweet", "Summer"]),
        WordWithFeatures(word: "Blackberry", features: ["Purple", "Small", "Rough", "Sweet", "Summer"]),
        WordWithFeatures(word: "Cranberry", features: ["Red", "Small", "Smooth", "Sour", "Winter"]),
        WordWithFeatures(word: "Lemon", features: ["Yellow", "Medium", "Rough", "Sour", "Year_Round"]),
        WordWithFeatures(word: "Lime", features: ["Green", "Small", "Rough", "Sour", "Year_Round"]),
        WordWithFeatures(word: "Grapefruit", features: ["Orange", "Large", "Rough", "Sour", "Winter"]),
        WordWithFeatures(word: "Pomegranate", features: ["Red", "Medium", "Hard", "Sweet", "Winter"]),
        WordWithFeatures(word: "Papaya", features: ["Orange", "Large", "Smooth", "Sweet", "Year_Round"]),
        WordWithFeatures(word: "Coconut", features: ["Brown", "Large", "Hard", "Mild", "Year_Round"]),
        WordWithFeatures(word: "Avocado", features: ["Green", "Medium", "Smooth", "Mild", "Year_Round"]),
        WordWithFeatures(word: "Fig", features: ["Purple", "Small", "Soft", "Sweet", "Summer"]),
        WordWithFeatures(word: "Date", features: ["Brown", "Small", "Soft", "Sweet", "Year_Round"]),
        WordWithFeatures(word: "Lychee", features: ["Red", "Small", "Rough", "Sweet", "Summer"]),
        WordWithFeatures(word: "Dragonfruit", features: ["Red", "Medium", "Smooth", "Mild", "Year_Round"]),
        WordWithFeatures(word: "Passion Fruit", features: ["Purple", "Small", "Rough", "Sweet", "Year_Round"]),
        WordWithFeatures(word: "Guava", features: ["Green", "Medium", "Smooth", "Sweet", "Year_Round"]),
        WordWithFeatures(word: "Persimmon", features: ["Orange", "Medium", "Smooth", "Sweet", "Winter"]),
        WordWithFeatures(word: "Jackfruit", features: ["Yellow", "Large", "Rough", "Sweet", "Year_Round"]),
        WordWithFeatures(word: "Durian", features: ["Yellow", "Large", "Rough", "Sweet", "Year_Round"]),
        WordWithFeatures(word: "Rambutan", features: ["Red", "Small", "Rough", "Sweet", "Summer"]),
        WordWithFeatures(word: "Star Fruit", features: ["Yellow", "Medium", "Smooth", "Sweet", "Year_Round"]),
        WordWithFeatures(word: "Cantaloupe", features: ["Orange", "Large", "Rough", "Sweet", "Summer"]),
        WordWithFeatures(word: "Honeydew", features: ["Green", "Large", "Smooth", "Sweet", "Summer"]),
        WordWithFeatures(word: "Tangerine", features: ["Orange", "Small", "Rough", "Sweet", "Winter"]),
        WordWithFeatures(word: "Mandarin", features: ["Orange", "Small", "Rough", "Sweet", "Winter"]),
        WordWithFeatures(word: "Clementine", features: ["Orange", "Small", "Rough", "Sweet", "Winter"]),
        WordWithFeatures(word: "Nectarine", features: ["Orange", "Medium", "Smooth", "Sweet", "Summer"]),
        WordWithFeatures(word: "Mulberry", features: ["Purple", "Small", "Smooth", "Sweet", "Summer"]),
        WordWithFeatures(word: "Gooseberry", features: ["Green", "Small", "Smooth", "Sour", "Summer"]),
        WordWithFeatures(word: "Elderberry", features: ["Purple", "Small", "Smooth", "Sweet", "Summer"]),
        WordWithFeatures(word: "Boysenberry", features: ["Purple", "Small", "Rough", "Sweet", "Summer"])
    ]
    
    // Helper function to get all words for a category
    static func getWords(for category: Category) -> [WordWithFeatures] {
        switch category {
        case .leagueOfLegends:
            return leagueOfLegendsWords
        case .valorant:
            return valorantWords
        case .food:
            return foodWords
        case .fruits:
            return fruitsWords
        }
    }
    
    // Get simple string array for backward compatibility
    static func getWordsArray(for category: Category) -> [String] {
        return getWords(for: category).map { $0.word }
    }
    
    // Get random word (returns string)
    static func getRandomWord(for category: Category) -> String {
        let words = getWords(for: category)
        return words.randomElement()?.word ?? words[0].word
    }
    
    // Get similar word based on shared features (at least 2 features in common)
    static func getSimilarWord(for word: String, category: Category) -> String {
        let allWords = getWords(for: category)
        
        // Find the word's features
        guard let targetWord = allWords.first(where: { $0.word.lowercased() == word.lowercased() }) else {
            // Fallback: return a random different word
            let differentWords = allWords.filter { $0.word.lowercased() != word.lowercased() }
            return differentWords.randomElement()?.word ?? allWords[0].word
        }
        
        // Find words with at least 2 features in common
        let similarWords = allWords.filter { otherWord in
            otherWord.word.lowercased() != word.lowercased() &&
            targetWord.features.intersection(otherWord.features).count >= 2
        }
        
        if let similar = similarWords.randomElement() {
            return similar.word
        }
        
        // Fallback: return a random word that's not the original
        let differentWords = allWords.filter { $0.word.lowercased() != word.lowercased() }
        return differentWords.randomElement()?.word ?? allWords[0].word
    }
}
