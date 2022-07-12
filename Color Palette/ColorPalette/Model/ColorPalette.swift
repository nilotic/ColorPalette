// 
//  ColorPalette.swift
//
//  Created by Den Jo on 2022/07/12.
//

import SwiftUI

struct ColorPalette {
    let index: UInt
    var name: String
    var color: Color
    let originalColor: Color
}

extension ColorPalette {
    
    init(index: UInt, name: String, color: Color) {
        self.index = index
        self.name  = name
        self.color = color
        
        originalColor = color
    }
}

extension ColorPalette {
    
    var rawValue: String {
        name
    }
}

extension ColorPalette: Identifiable {
    
    var id: String {
        rawValue
    }
}

extension ColorPalette: Hashable {
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(rawValue)
    }
}

extension ColorPalette: Equatable {
    
    static func ==(lhs: ColorPalette, rhs: ColorPalette) -> Bool {
        lhs.rawValue == rhs.rawValue
    }
}

#if DEBUG
extension ColorPalette {
    
    static var placeholder: ColorPalette {
        ColorPalette(index: 0, name: "primary violet", color: Color("violet0"))
    }
}
#endif
