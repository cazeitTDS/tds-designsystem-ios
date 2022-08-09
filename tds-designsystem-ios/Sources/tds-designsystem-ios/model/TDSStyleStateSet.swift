//
//  TDSStyleStateSet.swift
//  designsystem-ios
//
//  Created by Carl Zeitler on 14.06.22.
//

import Foundation

public struct TDSStyleStateSet: Codable {
    
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
}
