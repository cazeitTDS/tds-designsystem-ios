//
//  AppearanceExtension.swift
//  designsystem-ios-example-swiftui
//
//  Created by Carl Zeitler on 05.09.22.
//

import Foundation
import TDSDesignSystem
import SwiftUI

public extension Appearance.Color {
    
    // MARK: - View Colors
    
    static var defaultBackground: TDSColor {
        Appearance.Color.white
    }
    
    // MARK: - Primary Colors
    
    static var primary: TDSColor {
        Appearance.Color.primary400
    }
    
    static var primaryLightest: TDSColor {
        Appearance.Color.primary50
    }
    
    static var primaryLight: TDSColor {
        Appearance.Color.primary200
    }
    
    static var primaryDark: TDSColor {
        Appearance.Color.primary700
    }
    
    static var primaryDarkest: TDSColor {
        Appearance.Color.primary900
    }
    
    // MARK: - Secondary Colors
    
    static var secondary: TDSColor {
        Appearance.Color.secondary400
    }
    
    static var secondaryLightest: TDSColor {
        Appearance.Color.secondary50
    }
    
    static var secondaryLight: TDSColor {
        Appearance.Color.secondary200
    }
    
    static var secondaryDark: TDSColor {
        Appearance.Color.secondary700
    }
    
    static var secondaryDarkest: TDSColor {
        Appearance.Color.secondary900
    }
    
    // MARK: - Text Colors
    
    static var text: TDSColor {
        Appearance.Color.black
    }
    
    // MARK: - Gray
    
    static var gray: TDSColor {
        Appearance.Color.gray400
    }
    
    static var grayLightest: TDSColor {
        Appearance.Color.gray50
    }
    
    static var grayLight: TDSColor {
        Appearance.Color.gray200
    }
    
    static var grayDark: TDSColor {
        Appearance.Color.gray700
    }
    
    static var grayDarkest: TDSColor {
        Appearance.Color.gray900
    }
    
    // MARK: - Primary Button Colors
    
    fileprivate static var primaryButtonDefaultBackgroundColor: TDSColor {
        Appearance.Color.primary
    }
    
    fileprivate static var primaryButtonSelectedBackgroundColor: TDSColor {
        Appearance.Color.primaryLight
    }
    
    fileprivate static var primaryButtonDisabledBackgroundColor: TDSColor {
        Appearance.Color.secondaryLightest
    }
    
    fileprivate static var primaryButtonDefaultForegroundColor: TDSColor {
        Appearance.Color.secondaryDarkest
    }
    
    fileprivate static var primaryButtonSelectedForegroundColor: TDSColor {
        Appearance.Color.secondaryDarkest
    }
    
    fileprivate static var primaryButtonDisabledForegroundColor: TDSColor {
        Appearance.Color.secondaryLight
    }
    
    // MARK: - Secondary Button Colors
    
    fileprivate static var secondaryButtonDefaultBackgroundColor: TDSColor {
        Appearance.Color.secondaryDarkest
    }
    
    fileprivate static var secondaryButtonSelectedBackgroundColor: TDSColor {
        Appearance.Color.secondaryDark
    }
    
    fileprivate static var secondaryButtonDisabledBackgroundColor: TDSColor {
        Appearance.Color.secondaryLightest
    }
    
    fileprivate static var secondaryButtonDefaultForegroundColor: TDSColor {
        Appearance.Color.white
    }
    
    fileprivate static var secondaryButtonSelectedForegroundColor: TDSColor {
        Appearance.Color.white
    }
    
    fileprivate static var secondaryButtonDisabledForegroundColor: TDSColor {
        Appearance.Color.secondaryLight
    }
    
    // MARK: - Tertiary Button Colors
    
    fileprivate static var tertiaryButtonDefaultBackgroundColor: TDSColor {
        Appearance.Color.white
    }
    
    fileprivate static var tertiaryButtonSelectedBackgroundColor: TDSColor {
        Appearance.Color.white
    }
    
    fileprivate static var tertiaryButtonDisabledBackgroundColor: TDSColor {
        Appearance.Color.secondaryLightest
    }
    
    fileprivate static var tertiaryButtonDefaultForegroundColor: TDSColor {
        Appearance.Color.grayDark
    }
    
    fileprivate static var tertiaryButtonSelectedForegroundColor: TDSColor {
        Appearance.Color.grayLight
    }
    
    fileprivate static var tertiaryButtonDisabledForegroundColor: TDSColor {
        Appearance.Color.secondaryLight
    }
}

public extension Appearance.Spacing {
    fileprivate static var buttonSpacingTop: CGFloat {
        Appearance.Spacing._3xs
    }
    
    fileprivate static var buttonSpacingBottom: CGFloat {
        Appearance.Spacing._3xs
    }
    
    fileprivate static var buttonSpacingLeft: CGFloat {
        Appearance.Spacing._xs
    }
    
    fileprivate static var buttonSpacingRight: CGFloat {
        Appearance.Spacing._xs
    }
    
    fileprivate static var buttonSpacingIconSide: CGFloat {
        Appearance.Spacing._3xs
    }
}

public extension Appearance.Text {
    fileprivate static var buttonFontData: TDSFontData {
        Appearance.Text.button.default.tdsFont
    }
}


public extension Appearance {
    
    // MARK: - Colors
    
    // MARK: - Views
    
    // MARK: - Buttons
    
    class Button {
        private static let base: TDSStyle = {
            let fontData = Appearance.Text.buttonFontData
            return TDSStyle(cornerRadius: Appearance.CornerRadius.button,
                            padding: TDSEdgeInsets(top: Appearance.Spacing.buttonSpacingTop,
                                                   left: Appearance.Spacing.buttonSpacingLeft,
                                                   bottom: Appearance.Spacing.buttonSpacingBottom,
                                                   right: Appearance.Spacing.buttonSpacingRight),
                            tdsFont: fontData)
        }()
        
        public static let primary: TDSStyleStateSet = {
            let `default` = base.combine(foregroundColor: Appearance.Color.primaryButtonDefaultForegroundColor,
                                         backgroundColor: Appearance.Color.primaryButtonDefaultBackgroundColor)
            let pressed = base.combine(foregroundColor: Appearance.Color.primaryButtonSelectedForegroundColor,
                                       backgroundColor: Appearance.Color.primaryButtonSelectedBackgroundColor)
            let disabled = base.combine(foregroundColor: Appearance.Color.primaryButtonDisabledForegroundColor,
                                        backgroundColor: Appearance.Color.primaryButtonDisabledBackgroundColor)
            
            return TDSStyleStateSet(default: `default`, pressed: pressed, disabled: disabled)
        }()
        
        public static let primaryIconRight: TDSStyleStateSet = {
            let adjustedPadding = TDSEdgeInsets(top: Appearance.Spacing.buttonSpacingTop,
                                                left: Appearance.Spacing.buttonSpacingLeft,
                                                bottom: Appearance.Spacing.buttonSpacingBottom,
                                                right: Appearance.Spacing.buttonSpacingIconSide)
            
            return primary.combine(padding: adjustedPadding)
        }()
        
        public static let primaryIconLeft: TDSStyleStateSet = {
            let adjustedPadding = TDSEdgeInsets(top: Appearance.Spacing.buttonSpacingTop,
                                                 left: Appearance.Spacing.buttonSpacingIconSide,
                                                 bottom: Appearance.Spacing.buttonSpacingBottom,
                                                 right: Appearance.Spacing.buttonSpacingRight)
            
            return primary.combine(padding: adjustedPadding)
        }()
        
        public static let secondary: TDSStyleStateSet = {
            let `default` = base.combine(foregroundColor: Appearance.Color.secondaryButtonDefaultForegroundColor,
                                         backgroundColor: Appearance.Color.secondaryButtonDefaultBackgroundColor)
            let pressed = base.combine(foregroundColor: Appearance.Color.secondaryButtonSelectedForegroundColor,
                                       backgroundColor: Appearance.Color.secondaryButtonSelectedBackgroundColor)
            let disabled = base.combine(foregroundColor: Appearance.Color.secondaryButtonDisabledForegroundColor,
                                        backgroundColor: Appearance.Color.secondaryButtonDisabledBackgroundColor)
            
            return TDSStyleStateSet(default: `default`, pressed: pressed, disabled: disabled)
        }()
        
        public static let secondaryIconLeft: TDSStyleStateSet = {
            let adjustedPadding = TDSEdgeInsets(top: Appearance.Spacing.buttonSpacingTop,
                                                 left: Appearance.Spacing.buttonSpacingIconSide,
                                                 bottom: Appearance.Spacing.buttonSpacingBottom,
                                                 right: Appearance.Spacing.buttonSpacingRight)
            
            return secondary.combine(padding: adjustedPadding)
        }()
        
        public static let secondaryIconRight: TDSStyleStateSet = {
            let adjustedPadding = TDSEdgeInsets(top: Appearance.Spacing.buttonSpacingTop,
                                                 left: Appearance.Spacing.buttonSpacingLeft,
                                                 bottom: Appearance.Spacing.buttonSpacingBottom,
                                                 right: Appearance.Spacing.buttonSpacingIconSide)
            
            return secondary.combine(padding: adjustedPadding)
        }()
        
        public static let tertiary: TDSStyleStateSet = {
            let `default` = base.combine(foregroundColor: Appearance.Color.tertiaryButtonDefaultForegroundColor,
                                         backgroundColor: Appearance.Color.tertiaryButtonDefaultBackgroundColor)
            let pressed = base.combine(foregroundColor: Appearance.Color.tertiaryButtonSelectedForegroundColor,
                                       backgroundColor: Appearance.Color.tertiaryButtonSelectedBackgroundColor)
            let disabled = base.combine(foregroundColor: Appearance.Color.tertiaryButtonDisabledForegroundColor,
                                        backgroundColor: Appearance.Color.tertiaryButtonDisabledBackgroundColor)
            
            return TDSStyleStateSet(default: `default`, pressed: pressed, disabled: disabled)
        }()
        
        public static let tertiaryIconLeft: TDSStyleStateSet = {
            let adjustedPadding = TDSEdgeInsets(top: Appearance.Spacing.buttonSpacingTop,
                                                 left: Appearance.Spacing.buttonSpacingIconSide,
                                                 bottom: Appearance.Spacing.buttonSpacingBottom,
                                                 right: Appearance.Spacing.buttonSpacingRight)
            
            return tertiary.combine(padding: adjustedPadding)
        }()
        
        public static let tertiaryIconRight: TDSStyleStateSet = {
            let adjustedPadding = TDSEdgeInsets(top: Appearance.Spacing.buttonSpacingTop,
                                                 left: Appearance.Spacing.buttonSpacingLeft,
                                                 bottom: Appearance.Spacing.buttonSpacingBottom,
                                                 right: Appearance.Spacing.buttonSpacingIconSide)
            
            return tertiary.combine(padding: adjustedPadding)
        }()
    }
}
