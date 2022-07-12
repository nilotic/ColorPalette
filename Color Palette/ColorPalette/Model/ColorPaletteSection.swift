// 
//  ColorPaletteSection.swift
//
//  Created by Den Jo on 2022/07/12.
//

import SwiftUI

struct ColorPaletteSection {
    let title: String
    var colorPalettes: [ColorPalette]
}

extension ColorPaletteSection {
    
    var rawValue: String {
        title
    }
}

extension ColorPaletteSection: Identifiable {
    
    var id: String {
        rawValue
    }
}

extension ColorPaletteSection: Hashable {
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(rawValue)
    }
}

extension ColorPaletteSection: Equatable {
    
    static func ==(lhs: ColorPaletteSection, rhs: ColorPaletteSection) -> Bool {
        lhs.rawValue == rhs.rawValue
    }
}

#if DEBUG
extension ColorPaletteSection {
    
    static var placeholder: ColorPaletteSection {
        let violets = [ColorPalette(index: 0, name: "Primary_Violet", color: Color("violet0")), ColorPalette(index: 1, name: "Violet_sub1", color: Color("violet1")),
                       ColorPalette(index: 2, name: "Violet_sub2",    color: Color("violet2")), ColorPalette(index: 3, name: "Violet_sub4", color: Color("violet4")),
                       ColorPalette(index: 4, name: "Violet_sub5",    color: Color("violet5"))]
        
        return ColorPaletteSection(title: "Violet", colorPalettes: violets)
    }
}
#endif
