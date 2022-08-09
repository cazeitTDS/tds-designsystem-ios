//
//  TDSStyle.swift
//  designsystem-ios
//
//  Created by Carl Zeitler on 08.06.22.
//

import Foundation
import SwiftUI

public struct TDSStyle: Codable {
    
    // MARK: - Types
    
    enum CodingKeys: String, CodingKey {
        case foregroundColorRaw = "foreground-color"
        case backgroundColorRaw = "background-color"
        case cornerRadiusRaw = "corner-radius"
        
        case textAlignmentRaw = "text-alignment"
        
        case paddingRaw = "padding"
        case marginRaw = "margin"
    
        case borderRaw = "border"
        case tdsFontRaw = "font"
        case shadowRaw = "shadow"
    }
    
    // MARK: - Properties
    
    public var foregroundColor: TDSColor {
        return foregroundColorRaw ?? TDSStyleDefaults.foregroundColor
    }
    
    public var backgroundColor: TDSColor {
        return backgroundColorRaw ?? TDSStyleDefaults.backgroundColor
    }
    
    public var cornerRadius: CGFloat {
        return cornerRadiusRaw ?? TDSStyleDefaults.cornerRadius
    }
    
    public var textAlignment: TDSTextAlignment {
        return textAlignmentRaw ?? TDSStyleDefaults.textAlignment
    }
    
    public var border: TDSBorderData {
        return borderRaw ?? TDSStyleDefaults.border
    }
    
    public var tdsFont: TDSFontData {
        return tdsFontRaw ?? TDSStyleDefaults.tdsFont
    }
    
    public var padding: TDSEdgeInsets {
        return paddingRaw ?? TDSStyleDefaults.padding
    }
    
    public var margin: TDSEdgeInsets {
        return marginRaw ?? TDSStyleDefaults.margin
    }
    
    public var shadow: TDSShadow {
        return shadowRaw ?? TDSStyleDefaults.shadow
    }
    
    public var maxTextLines: Int {
        return maxTextLinesRaw ?? TDSStyleDefaults.maxTextLines
    }
    
    /**
     Raw values are representing the actual values set from the initialiser
     */
    
    fileprivate(set) var foregroundColorRaw: TDSColor?
    fileprivate(set) var backgroundColorRaw: TDSColor?
    fileprivate(set) var cornerRadiusRaw: CGFloat?
    
    fileprivate(set) var textAlignmentRaw: TDSTextAlignment?
    fileprivate(set) var maxTextLinesRaw: Int?
    
    fileprivate(set) var paddingRaw: TDSEdgeInsets?
    fileprivate(set) var marginRaw: TDSEdgeInsets?
    
    fileprivate(set) var borderRaw: TDSBorderData?
    fileprivate(set) var tdsFontRaw: TDSFontData?
    fileprivate(set) var shadowRaw: TDSShadow?
    
    // MARK: - Public API
    
    public init(foregroundColor: TDSColor? = nil,
                backgroundColor: TDSColor? = nil,
                cornerRadius: CGFloat? = nil,
                padding: TDSEdgeInsets? = nil,
                margin: TDSEdgeInsets? = nil,
                border: TDSBorderData? = nil,
                tdsFont: TDSFontData? = nil,
                textAlignment: TDSTextAlignment? = nil,
                maxTextLines: Int? = nil,
                shadow: TDSShadow? = nil) {
        self.foregroundColorRaw = foregroundColor
        self.backgroundColorRaw = backgroundColor
        self.cornerRadiusRaw = cornerRadius
        
        self.textAlignmentRaw = textAlignment
        self.paddingRaw = padding
        self.marginRaw = margin
        
        self.maxTextLinesRaw = maxTextLines
        
        self.borderRaw = border
        self.tdsFontRaw = tdsFont
        self.shadowRaw = shadow
    }
    
    public func combine(with other: TDSStyle?) -> TDSStyle {
        guard let otherNotNil = other else {
            return self.combine()
        }
        
        return self.combine(foregroundColor: otherNotNil.foregroundColorRaw,
                            backgroundColor: otherNotNil.backgroundColorRaw,
                            cornerRadius: otherNotNil.cornerRadiusRaw,
                            padding: otherNotNil.paddingRaw,
                            margin: otherNotNil.marginRaw,
                            border: otherNotNil.borderRaw,
                            tdsFont: otherNotNil.tdsFontRaw,
                            textAlignment: otherNotNil.textAlignmentRaw,
                            maxTextLines: otherNotNil.maxTextLinesRaw,
                            shadow: otherNotNil.shadowRaw)
    }
    
    public func combine(foregroundColor: TDSColor? = nil,
                        backgroundColor: TDSColor? = nil,
                        cornerRadius: CGFloat? = nil,
                        padding: TDSEdgeInsets? = nil,
                        margin: TDSEdgeInsets? = nil,
                        border: TDSBorderData? = nil,
                        tdsFont: TDSFontData? = nil,
                        textAlignment: TDSTextAlignment? = nil,
                        maxTextLines: Int? = nil,
                        shadow: TDSShadow? = nil) -> TDSStyle {
        return TDSStyle(foregroundColor: foregroundColor ?? self.foregroundColorRaw,
                        backgroundColor: backgroundColor ?? self.backgroundColorRaw,
                        cornerRadius: cornerRadius ?? self.cornerRadiusRaw,
                        padding: padding ?? self.paddingRaw,
                        margin: margin ?? self.marginRaw,
                        border: border ?? self.borderRaw,
                        tdsFont: tdsFont ?? self.tdsFontRaw,
                        textAlignment: textAlignment ?? self.textAlignmentRaw,
                        maxTextLines: maxTextLines ?? self.maxTextLinesRaw,
                        shadow: shadow ?? self.shadowRaw)
    }
}
