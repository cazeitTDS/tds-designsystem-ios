//
//  TextExtensions.swift
//  designsystem-ios
//
//  Created by Carl Zeitler on 15.06.22.
//

import Foundation
import SwiftUI

extension Text {
    public func applyStyle(_ style: TDSStyle) -> some View {
        return self.applyTextStyle(style)
            .applyStyle(style)
    }
    
    public func applyStyleStateSet(_ styleSet: TDSStyleStateSet,
                                   isEnabled: Bool = true,
                                   isHighlighted: Bool = false,
                                   isFocused: Bool = false) -> some View {
        let style = styleSet.style(isEnabled: isEnabled,
                                   isHighlighted: isHighlighted,
                                   isFocused: isFocused)
        
        return self.applyStyle(style)
    }
    
    /*
     Only style the properties from the style object that are unique to text
     */
    func applyTextStyle(_ style: TDSStyle) -> some View {
        return self.tracking(style.tdsFont.letterSpacing)
            .font(style.tdsFont.font)
    }
    
    /*
     Only style the properties from the style object that are unique to text according to the views state
     */
    func applyTextStyleStateSet(_ styleSet: TDSStyleStateSet,
                                isEnabled: Bool = true,
                                isHighlighted: Bool = false,
                                isFocused: Bool = false) -> some View {
        let style = styleSet.style(isEnabled: isEnabled,
                                   isHighlighted: isHighlighted,
                                   isFocused: isFocused)
        
        return self.applyTextStyle(style)
    }
}
