//
//  TDSColor.swift
//  designsystem-ios
//
//  Created by Carl Zeitler on 08.06.22.
//

import Foundation
import SwiftUI

public struct TDSColor: Codable {
    
    // MARK: - Types
    
    enum CodingKeys: String, CodingKey {
        case hexValue = "hex"
        case colorName = "name"
    }
    
    // MARK: - Properties
    
    public fileprivate(set) var colorName: String?
    public fileprivate(set) var hexValue: String?
    fileprivate(set) var internalColor: Color?
    
    public var color: Color? {
        if let internalColorNotNil = internalColor {
            return internalColorNotNil
        }
        
        if let colorNameNotNil = colorName {
            return Color(colorNameNotNil)
        }
        if let hexValue = hexValue {
            return Color(hex: hexValue)
        }
        
        return nil
    }
    
    /**
        Convenience variable to get the color as non-nilable value to avoid nil handling in multiple places
     */
    public var colorNotNil: Color {
        return color ?? Color.clear
    }
    
    // MARK: - Public API
    
    public init(colorName: String) {
        self.colorName = colorName
    }
    
    public init(hexValue: String) {
        self.hexValue = hexValue
    }
    
    public init(color: Color) {
        self.internalColor = color
    }
    
    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        self.hexValue = try? values.decodeIfPresent(String.self, forKey: .hexValue)
        self.colorName = try? values.decodeIfPresent(String.self, forKey: .colorName)
    }
    
    // MARK: - Private API
}

extension TDSColor {
    public static let clear = TDSColor(hexValue: "#00000000")
    static let black = TDSColor(hexValue: "#000000")
    static let white = TDSColor(hexValue: "#FFFFFF")
}
