// 
//  ColorPaletteSectionView.swift
//
//  Created by Den Jo on 2022/07/12.
//

import SwiftUI

struct ColorPaletteSectionView: View {
    
    // MARK: - Value
    // MARK: Public
    @Binding var data: ColorPaletteSection
    
    
    // MARK: - View
    // MARK: Public
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            titleView
            colorPalettesView
        }
    }
    
    // MARK: Private
    private var titleView: some View {
        Text(data.title)
            .font(.system(size: 24, weight: .semibold))
            .foregroundColor(Color("title"))
            .padding(EdgeInsets(top: 0, leading: 20, bottom: 20, trailing: 20))
    }
    
    private var colorPalettesView: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 0) {
                ForEach($data.colorPalettes) {
                    ColorPaletteView(data: $0)
                }
            }
            .padding(.horizontal, 20)
        }
    }
}

#if DEBUG
struct ColorPaletteSectionView_Previews: PreviewProvider {
    
    static var previews: some View {
        let view = ColorPaletteSectionView(data: .constant(.placeholder))
        
        view
            .previewDevice("iPhone 11 Pro")
            .preferredColorScheme(.light)
    }
}
#endif
