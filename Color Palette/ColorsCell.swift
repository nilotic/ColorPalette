//
//  ColorsCell.swift
//  ColorsCell
//
//  Created by Den Jo on 2021/09/02.
//

import SwiftUI

struct ColorsCell: View {
    
    // MARK: - Value
    // MARK: Public
    let title: String
    let colors: [PaletteColor]
    
    
    // MARK: - View
    // MARK; Public
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text(title)
                .font(.system(size: 32, weight: .medium))
                .foregroundColor(Color("title"))
                .padding(.bottom, 32)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 0) {
                    ForEach(colors) {
                        ColorCell(data: $0)
                    }
                }
            }
        }
    }
}

#if DEBUG
struct ColorsCell_Previews: PreviewProvider {
    
    static var previews: some View {
        let violets = [PaletteColor(index: 0, name: "Primary_Violet", color: Color("violet0")), PaletteColor(index: 1, name: "Violet_sub1", color: Color("violet1")),
                       PaletteColor(index: 2, name: "Violet_sub2",    color: Color("violet2")), PaletteColor(index: 3, name: "Violet_sub4", color: Color("violet4")),
                       PaletteColor(index: 4, name: "Violet_sub5",    color: Color("violet5"))]
        
        let view = ColorsCell(title: "Primary violet", colors: violets)
        
        Group {
            view
                .previewDevice("iPhone8")
                .preferredColorScheme(.light)
            
            view
                .previewDevice("iPhone 12")
                .preferredColorScheme(.light)
        }
    }
}
#endif
