import SwiftUI

struct EmojiArt {
    var backgroundURL: URL?
    var emojis = [Emoji]()
    
    struct Emoji {
        let text: String
        var x: Int
        var y: Int
        var size: Int
    }
}
