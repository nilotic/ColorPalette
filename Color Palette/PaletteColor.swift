//
//  PaletteColor.swift
//  PaletteColor
//
//  Created by Den Jo on 2021/09/02.
//

import SwiftUI

struct PaletteColor {
    let index: UInt
    var name: String
    var color: Color
}

extension PaletteColor: Hashable {

    var rawValue: String {
        name
    }
}

extension PaletteColor: Identifiable {
    
    var id: String {
        rawValue
    }
}

#if DEBUG
extension PaletteColor {
    
    static var placeholder: PaletteColor {
        PaletteColor(index: 0, name: "primary violet", color: Color("violet0"))
    }
}
#endif
