//
//  Item.swift
//  TikTak
//
//  Created by Kevin Nguyen on 18/2/2024.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
