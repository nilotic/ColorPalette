// 
//  ColorPalettesData.swift
//
//  Created by Den Jo on 2022/07/12.
//

import SwiftUI

final class ColorPalettesData: ObservableObject {
    
    // MARK: - Value
    // MARK: Public
    @Published var sections = [ColorPaletteSection]()
    @Published var colorScheme: ColorScheme = .light
    
    
    // MARK: Private
    private var violets: [ColorPalette] {
        [ColorPalette(index: 0, name: "Primary_Violet", color: Color("violet0")), ColorPalette(index: 1, name: "Violet_sub1", color: Color("violet1")),
         ColorPalette(index: 2, name: "Violet_sub2",    color: Color("violet2")), ColorPalette(index: 3, name: "Violet_sub4", color: Color("violet4")),
         ColorPalette(index: 4, name: "Violet_sub5",    color: Color("violet5"))]
    }
    
    private var mints: [ColorPalette] {
        [ColorPalette(index: 0, name: "Primary_Mint", color: Color("mint0")), ColorPalette(index: 1, name: "Mint_sub1", color: Color("mint1")),
         ColorPalette(index: 2, name: "Mint_sub2",    color: Color("mint2")), ColorPalette(index: 3, name: "Mint_sub3", color: Color("mint3")),
         ColorPalette(index: 4, name: "Mint_sub4",    color: Color("mint4"))]
    }
    
    private var magentas: [ColorPalette] {
        [ColorPalette(index: 0, name: "Primary_Magenta", color: Color("magenta0")), ColorPalette(index: 1, name: "Magenta_sub1", color: Color("magenta1")),
         ColorPalette(index: 2, name: "Magenta_sub2",    color: Color("magenta2")), ColorPalette(index: 3, name: "Magenta_sub3", color: Color("magenta3")),
         ColorPalette(index: 4, name: "Magenta_sub4",    color: Color("magenta4"))]
    }
    
    private var neongreens: [ColorPalette] {
        [ColorPalette(index: 0, name: "Primary_Neongreen", color: Color("neongreen0")), ColorPalette(index: 1, name: "Neongreen_sub1", color: Color("neongreen1")),
         ColorPalette(index: 2, name: "Neongreen_sub2",    color: Color("neongreen2")), ColorPalette(index: 3, name: "Neongreen_sub3", color: Color("neongreen3")),
         ColorPalette(index: 4, name: "Neongreen_sub4",    color: Color("neongreen4"))]
    }
    
    private var secondaries: [ColorPalette] {
        [ColorPalette(index: 0, name: "Secondary_0", color: Color("secondary0")), ColorPalette(index: 1, name: "Secondary_1", color: Color("secondary1")),
         ColorPalette(index: 2, name: "Secondary_2", color: Color("secondary2")), ColorPalette(index: 3, name: "Secondary_3", color: Color("secondary3")),
         ColorPalette(index: 4, name: "Secondary_4", color: Color("secondary4")), ColorPalette(index: 5, name: "Secondary_5", color: Color("secondary5"))]
    }
    
    private var neutrals: [ColorPalette] {
        [ColorPalette(index: 0, name: "Neutral_0",  color: Color("neutral0")), ColorPalette(index: 1, name: "Neutral_1", color: Color("neutral1")),
         ColorPalette(index: 2, name: "Neutral_2",  color: Color("neutral2")), ColorPalette(index: 3, name: "Neutral_3", color: Color("neutral3")),
         ColorPalette(index: 4, name: "Neutral_4",  color: Color("neutral4")), ColorPalette(index: 5, name: "Neutral_5", color: Color("neutral5")),
         ColorPalette(index: 6, name: "Neutral_6",  color: Color("neutral6")), ColorPalette(index: 7, name: "Neutral_7", color: Color("neutral7")),
         ColorPalette(index: 8, name: "Neutral_8",  color: Color("neutral8")), ColorPalette(index: 9, name: "Neutral_9", color: Color("neutral9")),
         ColorPalette(index: 8, name: "Neutral_10", color: Color("neutral10"))]
    }
    
    private var alerts: [ColorPalette] {
        [ColorPalette(index: 0, name: "Alert", color: Color("alert"))]
    }
    
    
    // MARK: - Function
    // MARK: Public
    func request( ) {
        sections =  [ColorPaletteSection(title: "Violet",    colorPalettes: violets),
                     ColorPaletteSection(title: "Mint",      colorPalettes: mints),
                     ColorPaletteSection(title: "Magenta",   colorPalettes: magentas),
                     ColorPaletteSection(title: "Neongreen", colorPalettes: neongreens),
                     ColorPaletteSection(title: "Secondary", colorPalettes: secondaries),
                     ColorPaletteSection(title: "Neutral",   colorPalettes: neutrals),
                     ColorPaletteSection(title: "Alert",     colorPalettes: alerts)]
    }
}

