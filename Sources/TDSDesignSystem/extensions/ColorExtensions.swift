//
//  ColorExtensions.swift
//  designsystem-ios
//
//  Created by Carl Zeitler on 08.06.22.
//

import Foundation
import SwiftUI

extension Color {
    
    // MARK: - Public API
    
    /**
     Accepts hex strings in #RRGGBB or #AARRGGBB and initialises a color if possible
     **/
    init?(hex: String) {
        var hexString: String = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()
        
        var r: CGFloat = 0.0
        var g: CGFloat = 0.0
        var b: CGFloat = 0.0
        var a: CGFloat = 1.0

        if (hexString.hasPrefix("#")) {
            hexString.remove(at: hexString.startIndex)
        }

        let length = hexString.count
        
        var rgb: UInt64 = 0
        
        guard Scanner(string: hexString).scanHexInt64(&rgb) else {
            return nil
        }
        
        if length == 6 {
            r = CGFloat((rgb & 0xFF0000) >> 16) / 255.0
            g = CGFloat((rgb & 0x00FF00) >> 8) / 255.0
            b = CGFloat(rgb & 0x0000FF) / 255.0
            
        } else if length == 8 {
            a = CGFloat((rgb & 0xFF000000) >> 24) / 255.0
            r = CGFloat((rgb & 0x00FF0000) >> 16) / 255.0
            g = CGFloat((rgb & 0x0000FF00) >> 8) / 255.0
            b = CGFloat(rgb & 0x000000FF) / 255.0
            
        } else {
            return nil
        }

        self.init(red: r, green: g, blue: b, opacity: a)
    }
}
