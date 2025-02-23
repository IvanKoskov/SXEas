//
//  Item.swift
//  SXEas
//
//  Created by Evan Matthew on 22/2/2568 BE.
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
