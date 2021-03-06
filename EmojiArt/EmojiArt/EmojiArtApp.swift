//
//  EmojiArtApp.swift
//  EmojiArt
//
//  Created by arthur takahashi on 22/03/21.
//

import SwiftUI

@main
struct EmojiArtApp: App {
    var body: some Scene {
        let document: EmojiArtDocument = EmojiArtDocument()
        WindowGroup {
            EmojiArtDocumentView(document: document)
        }
    }
}
