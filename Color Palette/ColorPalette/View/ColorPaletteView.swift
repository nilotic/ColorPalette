// 
//  ColorPaletteView.swift
//
//  Created by Den Jo on 2022/07/12.
//

import SwiftUI

struct ColorPaletteView: View {
    
    // MARK: - Value
    // MARK: Public
    @Binding var data: ColorPalette
    
    
    // MARK: - View
    // MARK: Public
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            colorView
           
            VStack(alignment: .leading, spacing: 7) {
                nameView
                descriptionView
            }
            .onTapGesture {
                data.color = data.originalColor
            }
        }
    }
    
    // MARK: Private
    private var colorView: some View {
        ZStack {
            data.color
                .padding(.bottom, 8)
            
            ColorPicker("", selection: $data.color, supportsOpacity: true)
        }
        .frame(width: 128, height: 128)
    }
    
    private var nameView: some View {
        Text(data.name)
            .frame(width: 128, alignment: .leading)
            .font(.system(size: 15, weight: .medium))
            .foregroundColor(Color("title"))
            .lineLimit(1)
    }
    
    private var descriptionView: some View {
        Text("\(data.color.hex)\n\(data.color.description)")
            .font(.system(size: 12, weight: .regular))
            .foregroundColor(Color("subtitle"))
    }
}

#if DEBUG
struct ColorPaletteView_Previews: PreviewProvider {
    
    static var previews: some View {
        let view = ColorPaletteView(data: .constant(.placeholder))
        
        view
            .previewDevice("iPhone 11 Pro")
    }
}
#endif
