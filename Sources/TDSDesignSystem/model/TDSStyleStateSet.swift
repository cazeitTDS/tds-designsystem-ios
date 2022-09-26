//
//  TDSStyleStateSet.swift
//  designsystem-ios
//
//  Created by Carl Zeitler on 14.06.22.
//

import Foundation
import SwiftUI

public struct TDSStyleStateSet: Codable, Combinable {
    
    // MARK: - Types
    
    enum CodingKeys: String, CodingKey {
        case `default`
        case pressed
        case disabled
        
        case focused
    }
    
    // MARK: - Properties
    
    public fileprivate(set) var `default`: TDSStyle
    public fileprivate(set) var pressed: TDSStyle
    public fileprivate(set) var disabled: TDSStyle
    
    public fileprivate(set) var focused: TDSStyle
    
    // MARK: - Public API
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        var defaultStyle = try? container.decode(TDSStyle.self, forKey: .default)
        
        // if there was no style found identified with keyword "default", try to decode a single style
        if defaultStyle == nil {
            defaultStyle = try TDSStyle(from: decoder)
        }
        
        guard let defaultStyleNotNil = defaultStyle else {
            throw NSError(domain: "A style could not be decoded from the config file", code: 222)
        }
        
        let pressedStyle = try? container.decodeIfPresent(TDSStyle.self, forKey: .pressed)
        let disabledStyle = try? container.decodeIfPresent(TDSStyle.self, forKey: .disabled)
        let focusedStyle = try? container.decodeIfPresent(TDSStyle.self, forKey: .focused)
        
        self.init(default: defaultStyleNotNil,
                  pressed: pressedStyle,
                  disabled: disabledStyle,
                  focused: focusedStyle)
    }
    
    /**
     If no values are provided for a certain state, the default state will be set
     */
    public init(default: TDSStyle,
                pressed: TDSStyle? = nil,
                disabled: TDSStyle? = nil,
                focused: TDSStyle? = nil) {
        let defaultState = `default`
        
        self.default = defaultState
        self.pressed = pressed ?? defaultState
        self.disabled = disabled ?? defaultState
        self.focused = focused ?? defaultState
    }
    
    /**
     Convenience init if all states should be the same
     */
    public init(value: TDSStyle) {
        self.init(default: value)
    }
    
    public func style(isEnabled: Bool,
                      isHighlighted: Bool = false,
                      isFocused: Bool = false) -> TDSStyle {
        var retVal: TDSStyle = self.default
        
        if !isEnabled {
            retVal = self.disabled
        } else if isHighlighted {
            retVal = self.pressed
        } else if isFocused {
            retVal = self.focused
        }
        
        return retVal
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
                        shadow: TDSShadow? = nil) -> TDSStyleStateSet {
        let style = TDSStyle(foregroundColor: foregroundColor,
                             backgroundColor: backgroundColor,
                             cornerRadius: cornerRadius,
                             padding: padding,
                             margin: margin,
                             border: border,
                             tdsFont: tdsFont,
                             textAlignment: textAlignment,
                             maxTextLines: maxTextLines,
                             shadow: shadow)
        
        return self.combine(withStyle: style)
    }
    
    public func combine(with styleStateSet: TDSStyleStateSet?) -> TDSStyleStateSet {
        let `default` = self.default.combine(with: styleStateSet?.default)
        let pressed = self.pressed.combine(with: styleStateSet?.pressed)
        let disabled = self.disabled.combine(with: styleStateSet?.disabled)
        let focused = self.focused.combine(with: styleStateSet?.focused)
        
        return TDSStyleStateSet(default: `default`,
                                pressed: pressed,
                                disabled: disabled,
                                focused: focused)
    }
    
    public func combine(withStyle style: TDSStyle?) -> TDSStyleStateSet {
        guard let style = style else {
            return self.combine(with: nil)
        }
        
        let styleStateSet = TDSStyleStateSet(value: style)
        
        return self.combine(with: styleStateSet)
    }
}
