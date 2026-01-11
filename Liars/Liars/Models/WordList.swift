import Foundation

struct WordList {
    static let leagueOfLegendsChampions = [
        "Aatrox", "Ahri", "Akali", "Akshan", "Alistar", "Amumu", "Anivia", "Annie",
        "Aphelios", "Ashe", "Aurelion Sol", "Azir", "Bard", "Bel'Veth", "Blitzcrank",
        "Brand", "Braum", "Caitlyn", "Camille", "Cassiopeia", "Cho'Gath", "Corki",
        "Darius", "Diana", "Draven", "Dr. Mundo", "Ekko", "Elise", "Evelynn",
        "Ezreal", "Fiddlesticks", "Fiora", "Fizz", "Galio", "Gangplank", "Garen",
        "Gnar", "Gragas", "Graves", "Gwen", "Hecarim", "Heimerdinger", "Hwei",
        "Illaoi", "Irelia", "Ivern", "Janna", "Jarvan IV", "Jax", "Jayce",
        "Jhin", "Jinx", "K'Sante", "Kai'Sa", "Kalista", "Karma", "Karthus",
        "Kassadin", "Katarina", "Kayle", "Kayn", "Kennen", "Kha'Zix", "Kindred",
        "Kled", "Kog'Maw", "LeBlanc", "Lee Sin", "Leona", "Lillia", "Lissandra",
        "Lucian", "Lulu", "Lux", "Malphite", "Malzahar", "Maokai", "Master Yi",
        "Milio", "Miss Fortune", "Mordekaiser", "Morgana", "Naafiri", "Nami",
        "Nasus", "Nautilus", "Neeko", "Nidalee", "Nilah", "Nocturne", "Nunu & Willump",
        "Olaf", "Orianna", "Ornn", "Pantheon", "Poppy", "Pyke", "Qiyana",
        "Quinn", "Rakan", "Rammus", "Rek'Sai", "Rell", "Renata Glasc", "Renekton",
        "Rengar", "Riven", "Rumble", "Ryze", "Samira", "Sejuani", "Senna",
        "Seraphine", "Sett", "Shaco", "Shen", "Shyvana", "Singed", "Sion",
        "Sivir", "Skarner", "Sona", "Soraka", "Swain", "Sylas", "Syndra",
        "Tahm Kench", "Taliyah", "Talon", "Taric", "Teemo", "Thresh", "Tristana",
        "Trundle", "Tryndamere", "Twisted Fate", "Twitch", "Udyr", "Urgot", "Varus",
        "Vayne", "Veigar", "Vel'Koz", "Vex", "Vi", "Viego", "Viktor",
        "Vladimir", "Volibear", "Warwick", "Wukong", "Xayah", "Xerath", "Xin Zhao",
        "Yasuo", "Yone", "Yorick", "Yuumi", "Zac", "Zed", "Zeri",
        "Ziggs", "Zilean", "Zoe", "Zyra"
    ]
    
    static let valorantChampions = [
        "Astra", "Breach", "Brimstone", "Chamber", "Cypher", "Deadlock", "Fade",
        "Gekko", "Harbor", "Iso", "Jett", "KAY/O", "Killjoy", "Neon",
        "Omen", "Phoenix", "Raze", "Reyna", "Sage", "Skye", "Sova",
        "Viper", "Yoru"
    ]
    
    static let food = [
        "Pizza", "Burger", "Sushi", "Pasta", "Tacos", "Ramen", "Steak",
        "Sandwich", "Salad", "Soup", "Curry", "Rice", "Noodles", "Burrito",
        "Fried Chicken", "Hot Dog", "Ice Cream", "Donuts", "Cake", "Cookie",
        "Bread", "Cheese", "Butter", "Milk", "Eggs", "Bacon", "Sausage",
        "Ham", "Turkey", "Fish", "Shrimp", "Lobster", "Crab", "Oyster",
        "Mushroom", "Potato", "Carrot", "Broccoli", "Spinach", "Lettuce",
        "Tomato", "Onion", "Garlic", "Pepper", "Salt", "Sugar", "Honey",
        "Olive Oil", "Vinegar", "Soy Sauce", "Ketchup", "Mustard", "Mayonnaise"
    ]
    
    static let fruits = [
        "Apple", "Banana", "Orange", "Strawberry", "Grape", "Watermelon",
        "Pineapple", "Mango", "Kiwi", "Peach", "Pear", "Cherry", "Plum",
        "Apricot", "Blueberry", "Raspberry", "Blackberry", "Cranberry",
        "Lemon", "Lime", "Grapefruit", "Pomegranate", "Papaya", "Coconut",
        "Avocado", "Fig", "Date", "Lychee", "Dragonfruit", "Passion Fruit",
        "Guava", "Persimmon", "Jackfruit", "Durian", "Rambutan", "Star Fruit",
        "Cantaloupe", "Honeydew", "Tangerine", "Mandarin", "Clementine",
        "Nectarine", "Mulberry", "Gooseberry", "Elderberry", "Boysenberry"
    ]
    
    static func getWords(for category: Category) -> [String] {
        switch category {
        case .leagueOfLegends:
            return leagueOfLegendsChampions
        case .valorant:
            return valorantChampions
        case .food:
            return food
        case .fruits:
            return fruits
        }
    }
    
    static func getRandomWord(for category: Category) -> String {
        let words = getWords(for: category)
        return words.randomElement() ?? words[0]
    }
    
    static func getSimilarWord(for word: String, category: Category) -> String {
        let words = getWords(for: category)
        // Find a word that's similar in length or starts with the same letter
        let similarWords = words.filter { otherWord in
            otherWord.lowercased() != word.lowercased() &&
            (otherWord.prefix(1).lowercased() == word.prefix(1).lowercased() ||
             abs(otherWord.count - word.count) <= 2)
        }
        
        if let similar = similarWords.randomElement() {
            return similar
        }
        
        // Fallback: return a random word that's not the original
        let differentWords = words.filter { $0.lowercased() != word.lowercased() }
        return differentWords.randomElement() ?? words[0]
    }
}
