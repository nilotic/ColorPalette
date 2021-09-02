//
//  PaletteView.swift
//  Color Palette
//
//  Created by Den Jo on 2021/09/02.
//

import SwiftUI

struct PaletteView: View {
    
    // MARK: - Value
    // MARK: Private
    @StateObject private var data = PaletteData()
    @State private var colorScheme: ColorScheme = .light
    
    
    // MARK: - View
    // MARK: Public
    var body: some View {
        NavigationView {
            colorsView
                .navigationBarItems(trailing: barButtonItem)
                .navigationTitle("Color")
        }
        .preferredColorScheme(colorScheme)
    }
    
    // MARK: Private
    private var colorsView: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 60) {
                ColorsCell(title: "Primary Violet",    colors: data.violets)
                ColorsCell(title: "Primary mint",      colors: data.mints)
                ColorsCell(title: "Primary magenta",   colors: data.magentas)
                ColorsCell(title: "Primary neongreen", colors: data.neongreens)
                ColorsCell(title: "Secondary",         colors: data.secondaries)
                ColorsCell(title: "Neutral",           colors: data.neutrals)
                ColorsCell(title: "Alert",             colors: data.alerts)
            }
        }
        .padding()
    }
    
    private var barButtonItem: some View {
        Image(systemName: colorScheme == .light ? "sun.max.fill" : "moon")
            .foregroundColor(colorScheme == .light ? .black : .white)
            .onTapGesture {
                colorScheme = colorScheme == .light ? .dark : .light
            }
    }
}

#if DEBUG
struct PaletteView_Previews: PreviewProvider {
    
    static var previews: some View {
        let view = PaletteView()
        
        Group {
            view
                .previewDevice("iPhone 8")
                .preferredColorScheme(.light)
            
            view
                .previewDevice("iPhone 12")
                .preferredColorScheme(.light)
        }
    }
}
#endif
