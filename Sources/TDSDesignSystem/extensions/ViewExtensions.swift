//
//  ViewExtensions.swift
//  designsystem-ios
//
//  Created by Carl Zeitler on 29.06.22.
//

import Foundation
import SwiftUI

extension View {
    public func styleView(_ style: TDSStyle) -> some View {
        let overlay = RoundedRectangle(cornerRadius: style.border.cornerRadius)
            .stroke(style.border.color.colorNotNil,
                    lineWidth: style.border.width)
            
        let background = RoundedRectangle(cornerRadius: style.cornerRadius)
            .fill(style.backgroundColor.colorNotNil)
            .shadow(color: style.shadow.color.colorNotNil,
                    radius: style.shadow.radius,
                    x: style.shadow.offset.horizontal,
                    y: style.shadow.offset.vertical)
        
        return self.foregroundColor(style.foregroundColor.colorNotNil)
            .multilineTextAlignment(style.textAlignment.textAlignment)
            .lineLimit(style.maxTextLines)
            .padding(style.padding.edgeInsets)
            .cornerRadius(style.cornerRadius)
            .background(background)
            .padding(style.border.insets.edgeInsets)
            .overlay(overlay)
            .padding(-style.border.insets.edgeInsets)
            .padding(style.margin.edgeInsets)
    }
    
    public func styleView(_ styleSet: TDSStyleStateSet,
                          isEnabled: Bool = true,
                          isHighlighted: Bool = false,
                          isFocused: Bool = false) -> some View {
        let style = styleSet.style(isEnabled: isEnabled,
                                   isHighlighted: isHighlighted,
                                   isFocused: isFocused)
        
        return self.styleView(style)
    }
}
