//
//  PaletteData.swift
//  PaletteData
//
//  Created by Den Jo on 2021/09/02.
//

import SwiftUI

final class PaletteData: ObservableObject {
    
    // MARK: - Value
    // MARK: Public
    let violets = [PaletteColor(index: 0, name: "Primary_Violet", color: Color("violet0")), PaletteColor(index: 1, name: "Violet_sub1", color: Color("violet1")),
                   PaletteColor(index: 2, name: "Violet_sub2",    color: Color("violet2")), PaletteColor(index: 3, name: "Violet_sub4", color: Color("violet4")),
                   PaletteColor(index: 4, name: "Violet_sub5",    color: Color("violet5"))]
    
    let mints = [PaletteColor(index: 0, name: "Primary_Mint", color: Color("mint0")), PaletteColor(index: 1, name: "Mint_sub1", color: Color("mint1")),
                 PaletteColor(index: 2, name: "Mint_sub2",    color: Color("mint2")), PaletteColor(index: 3, name: "Mint_sub3", color: Color("mint3")),
                 PaletteColor(index: 4, name: "Mint_sub4",    color: Color("mint4"))]
    
    let magentas = [PaletteColor(index: 0, name: "Primary_Magenta", color: Color("magenta0")), PaletteColor(index: 1, name: "Magenta_sub1", color: Color("magenta1")),
                    PaletteColor(index: 2, name: "Magenta_sub2",    color: Color("magenta2")), PaletteColor(index: 3, name: "Magenta_sub3", color: Color("magenta3")),
                    PaletteColor(index: 4, name: "Magenta_sub4",    color: Color("magenta4"))]
    
    let neongreens = [PaletteColor(index: 0, name: "Primary_Neongreen", color: Color("neongreen0")), PaletteColor(index: 1, name: "Neongreen_sub1", color: Color("neongreen1")),
                      PaletteColor(index: 2, name: "Neongreen_sub2",    color: Color("neongreen2")), PaletteColor(index: 3, name: "Neongreen_sub3", color: Color("neongreen3")),
                      PaletteColor(index: 4, name: "Neongreen_sub4",    color: Color("neongreen4"))]
    
    let secondaries = [PaletteColor(index: 0, name: "Secondary_0", color: Color("secondary0")), PaletteColor(index: 1, name: "Secondary_1", color: Color("secondary1")),
                       PaletteColor(index: 2, name: "Secondary_2", color: Color("secondary2")), PaletteColor(index: 3, name: "Secondary_3", color: Color("secondary3")),
                       PaletteColor(index: 4, name: "Secondary_4", color: Color("secondary4")), PaletteColor(index: 5, name: "Secondary_5", color: Color("secondary5"))]
    
    let neutrals = [PaletteColor(index: 0, name: "Neutral_0", color: Color("neutral0")), PaletteColor(index: 1, name: "Neutral_1", color: Color("neutral1")),
                    PaletteColor(index: 2, name: "Neutral_2", color: Color("neutral2")), PaletteColor(index: 3, name: "Neutral_3", color: Color("neutral3")),
                    PaletteColor(index: 4, name: "Neutral_4", color: Color("neutral4")), PaletteColor(index: 5, name: "Neutral_5", color: Color("neutral5")),
                    PaletteColor(index: 6, name: "Neutral_6", color: Color("neutral6")), PaletteColor(index: 7, name: "Neutral_7", color: Color("neutral7")),
                    PaletteColor(index: 8, name: "Neutral_8", color: Color("neutral8")), PaletteColor(index: 9, name: "Neutral_9", color: Color("neutral9"))]
    
    let alerts = [PaletteColor(index: 0, name: "Alert", color: Color("alert"))]
}

