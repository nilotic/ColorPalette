//
//  ColorExtension.swift
//  ColorExtension
//
//  Created by Den Jo on 2021/09/02.
//

import SwiftUI

extension Color {
    
    var components: (red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat) {
        guard var components = UIColor(self).cgColor .components else { return (1, 1, 1, 1) }
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
        guard let components = UIColor(self).cgColor.components else { return "" }
        return String(format: "#%02lX%02lX%02lX", lroundf(Float(components[0] * 255)), lroundf(Float(components[1] * 255)), lroundf(Float(components[2] * 255)))
    }
}
