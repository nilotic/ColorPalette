//
//  ColorExtension.swift
//  ColorExtension
//
//  Created by Den Jo on 2021/09/02.
//

import SwiftUI

extension Color {
    
    var components: (red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat) {
        guard let p3ColorSpace = CGColorSpace(name: CGColorSpace.displayP3), let p3Color = UIColor(self).cgColor.converted(to: p3ColorSpace, intent: .defaultIntent, options: nil),
              var components = p3Color.components else { return (1, 1, 1, 1) }
        
        components[0] = (components[0] * 1000).rounded() / 1000
        components[1] = (components[1] * 1000).rounded() / 1000
        components[2] = (components[2] * 1000).rounded() / 1000
        components[3] = (components[3] * 1000).rounded() / 1000
        
        return (components[0] * 255, components[1] * 255, components[2] * 255, components[3])
    }
    
    var rgbDescription: String {
        let components = components
        return "(\(Int(components.red)), \(Int(components.green)), \(Int(components.blue)))"
    }
    
    var hex: String {
        guard let colorSpace = CGColorSpace(name: CGColorSpace.displayP3), let color = UIColor(self).cgColor.converted(to: colorSpace, intent: .defaultIntent, options: nil),
              let components = color.components, 4 <= components.count else { return "" }
        
        return String(format: "#%02lX%02lX%02lX%02lX", lroundf(Float(components[0] * 255)), lroundf(Float(components[1] * 255)), lroundf(Float(components[2] * 255)), lroundf(Float(components[3] * 255)))
    }
}
