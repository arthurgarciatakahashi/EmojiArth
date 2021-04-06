import SwiftUI

struct EmojiArt: Codable {
    var backgroundURL: URL?
    var emojis = [Emoji]()
    private var uniqueEmojiId = 0
    
    struct Emoji: Identifiable, Codable {
        let id: Int
        let text: String
        var x: Int
        var y: Int
        var size: Int
        
        fileprivate init(id: Int, text: String, x: Int, y: Int, size: Int) {
            self.id = id
            self.text = text
            self.x = x
            self.y = y
            self.size = size
        }
    }
    
    var json: Data? {
        return try? JSONEncoder().encode(self)
    }
    
    init?(json: Data?) {
        if json != nil, let newEmojiArt = try? JSONDecoder().decode(EmojiArt.self, from: json!) {
            self = newEmojiArt
        } else {
            return nil
        }
    }
    
    init() {
        //do nothing
    }
    
    mutating func addEmoji(_ text: String, x: Int, y: Int, size: Int) {
        uniqueEmojiId += 1
        self.emojis.append(Emoji(id: uniqueEmojiId, text: text, x: x, y: y, size: size))
    }
    
}
