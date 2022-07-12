// 
//  ColorPalettesView.swift
//
//  Created by Den Jo on 2022/07/12.
//

import SwiftUI

struct ColorPalettesView: View {
    
    // MARK: - Value
    // MARK: Private
    @StateObject private var data = ColorPalettesData()
    @Environment(\.dismiss) private var dismiss
    
    
    // MARK: - View
    // MARK: Public
    var body: some View {
        NavigationView {
            contentsView
                .navigationTitle("Color")
                .navigationBarBackButtonHidden(true)
                .toolbar {
                    barButtonItem
                }
        }
        .preferredColorScheme(data.colorScheme)
        .navigationViewStyle(StackNavigationViewStyle())
    }
    
    // MARK: Private
    private var contentsView: some View {
        paletteSectionsView
            .task {
                data.request()
            }
    }
    
    private var paletteSectionsView: some View {
        ScrollView {
            VStack(spacing: 60) {
                ForEach($data.sections) {
                    ColorPaletteSectionView(data: $0)
                }
            }
            .padding(.vertical, 20)
        }
    }
    
    private var barButtonItem: some ToolbarContent {
        ToolbarItem(placement: .navigationBarTrailing) {
            Image(systemName: data.colorScheme == .light ? "sun.max.fill" : "moon")
                .foregroundColor(data.colorScheme == .light ? .black : .white).foregroundColor(.black)
                .onTapGesture {
                    withAnimation {
                        data.colorScheme = data.colorScheme == .light ? .dark : .light
                    }
                }
        }
    }
}

#if DEBUG
struct ColorPalettesView_Previews: PreviewProvider {
    
    static var previews: some View {
        let view = ColorPalettesView()
        
        Group {
            view
                .previewDevice("iPhone 8")
                .preferredColorScheme(.light)
            
            view
                .previewDevice("iPhone 11 Pro")
                .preferredColorScheme(.light)
        }
    }
}
#endif
