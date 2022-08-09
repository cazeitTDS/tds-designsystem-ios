//
//  Fallback.swift
//  designsystem-ios
//
//  Created by Carl Zeitler on 14.06.22.
//

import Foundation
import SwiftUI

/**
 Provides the default values for properties that were not set inside of a style object
 Override to apply project-specific defaults
 */
public class TDSStyleDefaults {
    
    // MARK: - Properties
    
    public fileprivate(set) static var foregroundColor: TDSColor = TDSColor.black
    public fileprivate(set) static var backgroundColor: TDSColor = TDSColor.clear
    public fileprivate(set) static var cornerRadius: CGFloat = 0
    
    public fileprivate(set) static var textAlignment: TDSTextAlignment = .center
    public fileprivate(set) static var maxTextLines: Int = .max
    
    public fileprivate(set) static var border: TDSBorderData = TDSBorderData()
    public fileprivate(set) static var padding: TDSEdgeInsets = TDSEdgeInsets()
    public fileprivate(set) static var margin: TDSEdgeInsets = TDSEdgeInsets()
    
    public fileprivate(set) static var shadow: TDSShadow = TDSShadow(color: TDSColor.clear,
                                                                     radius: 2,
                                                                     offset:  TDSOffset(horizontal: 0,
                                                                                        vertical: 0))
    
    public fileprivate(set) static var tdsFont: TDSFontData = TDSFontData(size: 14,
                                                                  weight: .medium)
    
    class func setupWithStyle(_ style: TDSStyle?) {
        guard let style = style else {
            return
        }
        
        if let foregroundColor = style.foregroundColorRaw {
            TDSStyleDefaults.foregroundColor = foregroundColor
        }
        
        if let backgroundColor = style.backgroundColorRaw {
            TDSStyleDefaults.backgroundColor = backgroundColor
        }
        
        if let cornerRadius = style.cornerRadiusRaw {
            TDSStyleDefaults.cornerRadius = cornerRadius
        }
        
        if let textAlignment = style.textAlignmentRaw {
            TDSStyleDefaults.textAlignment = textAlignment
        }
        
        if let maxTextLines = style.maxTextLinesRaw {
            TDSStyleDefaults.maxTextLines = maxTextLines
        }
        
        if let padding = style.paddingRaw {
            TDSStyleDefaults.padding = padding
        }
        
        if let margin = style.marginRaw {
            TDSStyleDefaults.margin = margin
        }
        
        if let border = style.borderRaw {
            TDSStyleDefaults.border = border
        }
        
        if let font = style.tdsFontRaw {
            TDSStyleDefaults.tdsFont = font
        }
        
        if let shadow = style.shadowRaw {
            TDSStyleDefaults.shadow = shadow
        }
    }
}
