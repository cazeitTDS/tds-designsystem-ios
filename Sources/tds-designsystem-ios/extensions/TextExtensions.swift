//
//  TextExtensions.swift
//  designsystem-ios
//
//  Created by Carl Zeitler on 15.06.22.
//

import Foundation
import SwiftUI

extension Text {
    public func style(_ style: TDSStyle) -> some View {
        return self.styleText(style)
            .styleView(style)
    }
    
    public func style(_ styleSet: TDSStyleStateSet,
                      isEnabled: Bool = true,
                      isHighlighted: Bool = false,
                      isFocused: Bool = false) -> some View {
        let style = styleSet.style(isEnabled: isEnabled,
                                   isHighlighted: isHighlighted,
                                   isFocused: isFocused)
        
        return self.style(style)
    }
    
    /*
     Only style the properties from the style object that are unique to text
     */
    func styleText(_ style: TDSStyle) -> some View {
        return self.tracking(style.tdsFont.letterSpacing)
            .font(style.tdsFont.font)
    }
    
    /*
     Only style the properties from the style object that are unique to text according to the views state
     */
    func styleText(_ styleSet: TDSStyleStateSet,
                   isEnabled: Bool = true,
                   isHighlighted: Bool = false,
                   isFocused: Bool = false) -> some View {
        let style = styleSet.style(isEnabled: isEnabled,
                                   isHighlighted: isHighlighted,
                                   isFocused: isFocused)
        
        return self.styleText(style)
    }
}
