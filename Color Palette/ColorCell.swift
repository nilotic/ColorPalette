//
//  ColorCell.swift
//  ColorCell
//
//  Created by Den Jo on 2021/09/02.
//

import SwiftUI

struct ColorCell: View {
    
    // MARK: - Value
    // MARK: Private
    @State private var data: PaletteColor
    private let originalColor: PaletteColor
    
    
    // MARK: - Initializer
    init(data: PaletteColor) {
        self.data = data
        originalColor = data
    }
    
    
    // MARK: - View
    // MARK: Public
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            ZStack {
                data.color
                    .frame(width: 128, height: 128)
                    .padding(.bottom, 8)
                
                ColorPicker("", selection: $data.color, supportsOpacity: true)
            }
           
            
            VStack(alignment: .leading, spacing: 7) {
                Text(data.name)
                    .frame(width: 128, alignment: .leading)
                    .font(.system(size: 15, weight: .medium))
                    .foregroundColor(Color("title"))
                    .lineLimit(1)
                
                
                Text("\(data.color.hex)\n\(data.color.rgbDescription)")
                    .font(.system(size: 12, weight: .regular))
                    .foregroundColor(Color("subtitle"))
            }
            .onTapGesture {
                data = originalColor
            }
        }
    }
}

#if DEBUG
struct ColorCell_Previews: PreviewProvider {
    
    static var previews: some View {
        let view = ColorCell(data: .placeholder)
        
        Group {
            view
                .previewDevice("iPhone 8")
                .preferredColorScheme(.light)
            
            view
                .previewDisplayName("iPhone 12")
                .preferredColorScheme(.light)
        }
    }
}
#endif
