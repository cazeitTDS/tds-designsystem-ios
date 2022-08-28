//
//  Appearance.swift
//  designsystem-ios-example-swiftui
//
//  Created by TokenGenerator
//

import SwiftUI
import TDSDesignSystem

public class Appearance {
    
    // MARK: - Sizes
    
    public class Size {
        public static let buttonIconSize: CGFloat = 24
        public static let feedCardHeight: CGFloat = 160
    }
    
    // MARK: - Spacings

    public class Spacing {
        public static let _5xl: CGFloat = 80
        public static let _4xl: CGFloat = 72
        public static let _3xl: CGFloat = 64
        public static let _2xl: CGFloat = 56
        public static let _xl: CGFloat = 48
        public static let _l: CGFloat = 40
        public static let _m: CGFloat = 32
        public static let _s: CGFloat = 24
        public static let _xs: CGFloat = 16
        public static let _2xs: CGFloat = 12
        public static let _3xs: CGFloat = 8
        public static let _4xs: CGFloat = 4
    }
    
    // MARK: - Corner Radius
    
    public class CornerRadius {
        public static let button: CGFloat = 4
        public static let feedCard: CGFloat = 8
    }

    // MARK: - Border Width

    public class BorderWidth {
        public static let feedCard: CGFloat = 1
    }

    // MARK: - Colors

    public class Color {
        public static let black: TDSColor = TDSColor(hexValue: "#000000")
        public static let white: TDSColor = TDSColor(hexValue: "#ffffff")
        public static let typographyDefault: TDSColor = TDSColor(hexValue: "#111827")
        public static let green900: TDSColor = TDSColor(hexValue: "#14532d")
        public static let green800: TDSColor = TDSColor(hexValue: "#166534")
        public static let green700: TDSColor = TDSColor(hexValue: "#15803d")
        public static let green600: TDSColor = TDSColor(hexValue: "#16a34a")
        public static let green500: TDSColor = TDSColor(hexValue: "#22c55e")
        public static let green400: TDSColor = TDSColor(hexValue: "#4ade80")
        public static let green300: TDSColor = TDSColor(hexValue: "#86efac")
        public static let green200: TDSColor = TDSColor(hexValue: "#bbf7d0")
        public static let green100: TDSColor = TDSColor(hexValue: "#dcfce7")
        public static let green50: TDSColor = TDSColor(hexValue: "#f0fdf4")
        public static let yellow900: TDSColor = TDSColor(hexValue: "#713f12")
        public static let yellow800: TDSColor = TDSColor(hexValue: "#854d0e")
        public static let yellow700: TDSColor = TDSColor(hexValue: "#a16207")
        public static let yellow600: TDSColor = TDSColor(hexValue: "#ca8a04")
        public static let yellow500: TDSColor = TDSColor(hexValue: "#eab308")
        public static let yellow400: TDSColor = TDSColor(hexValue: "#facc15")
        public static let yellow300: TDSColor = TDSColor(hexValue: "#fde047")
        public static let yellow200: TDSColor = TDSColor(hexValue: "#fef08a")
        public static let yellow100: TDSColor = TDSColor(hexValue: "#fef9c3")
        public static let yellow50: TDSColor = TDSColor(hexValue: "#fefce8")
        public static let red900: TDSColor = TDSColor(hexValue: "#7f1d1d")
        public static let red800: TDSColor = TDSColor(hexValue: "#991b1b")
        public static let red700: TDSColor = TDSColor(hexValue: "#b91c1c")
        public static let red600: TDSColor = TDSColor(hexValue: "#dc2626")
        public static let red500: TDSColor = TDSColor(hexValue: "#ef4444")
        public static let red400: TDSColor = TDSColor(hexValue: "#f87171")
        public static let red300: TDSColor = TDSColor(hexValue: "#fca5a5")
        public static let red200: TDSColor = TDSColor(hexValue: "#fecaca")
        public static let red100: TDSColor = TDSColor(hexValue: "#fee2e2")
        public static let red50: TDSColor = TDSColor(hexValue: "#fef2f2")
        public static let gray900: TDSColor = TDSColor(hexValue: "#18181b")
        public static let gray800: TDSColor = TDSColor(hexValue: "#27272a")
        public static let gray700: TDSColor = TDSColor(hexValue: "#3f3f46")
        public static let gray600: TDSColor = TDSColor(hexValue: "#52525b")
        public static let gray500: TDSColor = TDSColor(hexValue: "#71717a")
        public static let gray400: TDSColor = TDSColor(hexValue: "#a1a1aa")
        public static let gray300: TDSColor = TDSColor(hexValue: "#d4d4d8")
        public static let gray200: TDSColor = TDSColor(hexValue: "#e4e4e7")
        public static let gray100: TDSColor = TDSColor(hexValue: "#f4f4f5")
        public static let gray50: TDSColor = TDSColor(hexValue: "#f9fafb")
        public static let blueGray900: TDSColor = TDSColor(hexValue: "#111826")
        public static let blueGray800: TDSColor = TDSColor(hexValue: "#1e293a")
        public static let blueGray700: TDSColor = TDSColor(hexValue: "#334154")
        public static let blueGray600: TDSColor = TDSColor(hexValue: "#475568")
        public static let blueGray500: TDSColor = TDSColor(hexValue: "#64748a")
        public static let blueGray400: TDSColor = TDSColor(hexValue: "#94a3b7")
        public static let blueGray300: TDSColor = TDSColor(hexValue: "#cbd5e0")
        public static let blueGray200: TDSColor = TDSColor(hexValue: "#e2e8f0")
        public static let blueGray100: TDSColor = TDSColor(hexValue: "#f1f5f9")
        public static let blueGray50: TDSColor = TDSColor(hexValue: "#f8fafc")
        public static let secondary900: TDSColor = TDSColor(hexValue: "#1f1144")
        public static let secondary800: TDSColor = TDSColor(hexValue: "#31285b")
        public static let secondary700: TDSColor = TDSColor(hexValue: "#443f70")
        public static let secondary600: TDSColor = TDSColor(hexValue: "#575886")
        public static let secondary500: TDSColor = TDSColor(hexValue: "#70749a")
        public static let secondary400: TDSColor = TDSColor(hexValue: "#8990ae")
        public static let secondary300: TDSColor = TDSColor(hexValue: "#a3acc2")
        public static let secondary200: TDSColor = TDSColor(hexValue: "#bec6d5")
        public static let secondary100: TDSColor = TDSColor(hexValue: "#dadfe7")
        public static let secondary50: TDSColor = TDSColor(hexValue: "#f5f7f9")
        public static let primary900: TDSColor = TDSColor(hexValue: "#095454")
        public static let primary800: TDSColor = TDSColor(hexValue: "#137676")
        public static let primary700: TDSColor = TDSColor(hexValue: "#219996")
        public static let primary600: TDSColor = TDSColor(hexValue: "#32bbaf")
        public static let primary500: TDSColor = TDSColor(hexValue: "#47d5c6")
        public static let primary400: TDSColor = TDSColor(hexValue: "#60e8da")
        public static let primary300: TDSColor = TDSColor(hexValue: "#81ede2")
        public static let primary200: TDSColor = TDSColor(hexValue: "#a3f2ea")
        public static let primary100: TDSColor = TDSColor(hexValue: "#e0fbf8")
        public static let primary50: TDSColor = TDSColor(hexValue: "#f2fdfc")
    }

    // MARK: - Texts

    public class Text {
        public static let button: TDSStyleStateSet = {
            let fontWeight = TDSFontWeight.fromFigmaString("Semibold")
            let fontData = TDSFontData(size: 22, weight: fontWeight, letterSpacing: -0.08, lineHeight: 28)

            let style = TDSStyle(tdsFont: fontData)

            return TDSStyleStateSet(value: style)
        }()

        public static let largeTitleSemibold: TDSStyleStateSet = {
            let fontWeight = TDSFontWeight.fromFigmaString("Bold")
            let fontData = TDSFontData(size: 34, weight: fontWeight, letterSpacing: 0.37, lineHeight: 41)

            let style = TDSStyle(tdsFont: fontData)

            return TDSStyleStateSet(value: style)
        }()

        public static let title1Semibold: TDSStyleStateSet = {
            let fontWeight = TDSFontWeight.fromFigmaString("Bold")
            let fontData = TDSFontData(size: 28, weight: fontWeight, letterSpacing: 0.36, lineHeight: 34)

            let style = TDSStyle(tdsFont: fontData)

            return TDSStyleStateSet(value: style)
        }()

        public static let title2Semibold: TDSStyleStateSet = {
            let fontWeight = TDSFontWeight.fromFigmaString("Bold")
            let fontData = TDSFontData(size: 22, weight: fontWeight, letterSpacing: 0.35, lineHeight: 28)

            let style = TDSStyle(tdsFont: fontData)

            return TDSStyleStateSet(value: style)
        }()

        public static let title3Semibold: TDSStyleStateSet = {
            let fontWeight = TDSFontWeight.fromFigmaString("Semibold")
            let fontData = TDSFontData(size: 20, weight: fontWeight, letterSpacing: 0.38, lineHeight: 24)

            let style = TDSStyle(tdsFont: fontData)

            return TDSStyleStateSet(value: style)
        }()

        public static let headlineSemibold: TDSStyleStateSet = {
            let fontWeight = TDSFontWeight.fromFigmaString("Semibold")
            let fontData = TDSFontData(size: 17, weight: fontWeight, letterSpacing: -0.41, lineHeight: 22)

            let style = TDSStyle(tdsFont: fontData)

            return TDSStyleStateSet(value: style)
        }()

        public static let bodySemibold: TDSStyleStateSet = {
            let fontWeight = TDSFontWeight.fromFigmaString("Semibold")
            let fontData = TDSFontData(size: 17, weight: fontWeight, letterSpacing: -0.41, lineHeight: 22)

            let style = TDSStyle(tdsFont: fontData)

            return TDSStyleStateSet(value: style)
        }()

        public static let calloutSemibold: TDSStyleStateSet = {
            let fontWeight = TDSFontWeight.fromFigmaString("Semibold")
            let fontData = TDSFontData(size: 16, weight: fontWeight, letterSpacing: -0.32, lineHeight: 21)

            let style = TDSStyle(tdsFont: fontData)

            return TDSStyleStateSet(value: style)
        }()

        public static let subheadlineSemibold: TDSStyleStateSet = {
            let fontWeight = TDSFontWeight.fromFigmaString("Semibold")
            let fontData = TDSFontData(size: 15, weight: fontWeight, letterSpacing: -0.5, lineHeight: 20)

            let style = TDSStyle(tdsFont: fontData)

            return TDSStyleStateSet(value: style)
        }()

        public static let footnoteSemibold: TDSStyleStateSet = {
            let fontWeight = TDSFontWeight.fromFigmaString("Semibold")
            let fontData = TDSFontData(size: 13, weight: fontWeight, letterSpacing: -0.08, lineHeight: 18)

            let style = TDSStyle(tdsFont: fontData)

            return TDSStyleStateSet(value: style)
        }()

        public static let caption1Semibold: TDSStyleStateSet = {
            let fontWeight = TDSFontWeight.fromFigmaString("Medium")
            let fontData = TDSFontData(size: 12, weight: fontWeight, letterSpacing: 0, lineHeight: 16)

            let style = TDSStyle(tdsFont: fontData)

            return TDSStyleStateSet(value: style)
        }()

        public static let caption2Semibold: TDSStyleStateSet = {
            let fontWeight = TDSFontWeight.fromFigmaString("Semibold")
            let fontData = TDSFontData(size: 11, weight: fontWeight, letterSpacing: 0.06, lineHeight: 13)

            let style = TDSStyle(tdsFont: fontData)

            return TDSStyleStateSet(value: style)
        }()

        public static let largeTitleRegular: TDSStyleStateSet = {
            let fontWeight = TDSFontWeight.fromFigmaString("Regular")
            let fontData = TDSFontData(size: 34, weight: fontWeight, letterSpacing: 0.37, lineHeight: 41)

            let style = TDSStyle(tdsFont: fontData)

            return TDSStyleStateSet(value: style)
        }()

        public static let title3Regular: TDSStyleStateSet = {
            let fontWeight = TDSFontWeight.fromFigmaString("Regular")
            let fontData = TDSFontData(size: 20, weight: fontWeight, letterSpacing: 0.38, lineHeight: 24)

            let style = TDSStyle(tdsFont: fontData)

            return TDSStyleStateSet(value: style)
        }()

        public static let bodyRegular: TDSStyleStateSet = {
            let fontWeight = TDSFontWeight.fromFigmaString("Regular")
            let fontData = TDSFontData(size: 17, weight: fontWeight, letterSpacing: -0.41, lineHeight: 22)

            let style = TDSStyle(tdsFont: fontData)

            return TDSStyleStateSet(value: style)
        }()

        public static let calloutRegular: TDSStyleStateSet = {
            let fontWeight = TDSFontWeight.fromFigmaString("Regular")
            let fontData = TDSFontData(size: 16, weight: fontWeight, letterSpacing: -0.32, lineHeight: 21)

            let style = TDSStyle(tdsFont: fontData)

            return TDSStyleStateSet(value: style)
        }()

        public static let subheadlineRegular: TDSStyleStateSet = {
            let fontWeight = TDSFontWeight.fromFigmaString("Regular")
            let fontData = TDSFontData(size: 15, weight: fontWeight, letterSpacing: -0.24, lineHeight: 20)

            let style = TDSStyle(tdsFont: fontData)

            return TDSStyleStateSet(value: style)
        }()

        public static let footnoteRegular: TDSStyleStateSet = {
            let fontWeight = TDSFontWeight.fromFigmaString("Regular")
            let fontData = TDSFontData(size: 13, weight: fontWeight, letterSpacing: -0.08, lineHeight: 18)

            let style = TDSStyle(tdsFont: fontData)

            return TDSStyleStateSet(value: style)
        }()

        public static let headlineRegular: TDSStyleStateSet = {
            let fontWeight = TDSFontWeight.fromFigmaString("Regular")
            let fontData = TDSFontData(size: 17, weight: fontWeight, letterSpacing: -0.41, lineHeight: 22)

            let style = TDSStyle(tdsFont: fontData)

            return TDSStyleStateSet(value: style)
        }()

        public static let title2Regular: TDSStyleStateSet = {
            let fontWeight = TDSFontWeight.fromFigmaString("Regular")
            let fontData = TDSFontData(size: 22, weight: fontWeight, letterSpacing: 0.35, lineHeight: 28)

            let style = TDSStyle(tdsFont: fontData)

            return TDSStyleStateSet(value: style)
        }()

        public static let title1Regular: TDSStyleStateSet = {
            let fontWeight = TDSFontWeight.fromFigmaString("Regular")
            let fontData = TDSFontData(size: 28, weight: fontWeight, letterSpacing: 0.36, lineHeight: 34)

            let style = TDSStyle(tdsFont: fontData)

            return TDSStyleStateSet(value: style)
        }()

        public static let caption1Regular: TDSStyleStateSet = {
            let fontWeight = TDSFontWeight.fromFigmaString("Regular")
            let fontData = TDSFontData(size: 12, weight: fontWeight, letterSpacing: 0, lineHeight: 16)

            let style = TDSStyle(tdsFont: fontData)

            return TDSStyleStateSet(value: style)
        }()

        public static let caption2Regular: TDSStyleStateSet = {
            let fontWeight = TDSFontWeight.fromFigmaString("Regular")
            let fontData = TDSFontData(size: 11, weight: fontWeight, letterSpacing: 0.07, lineHeight: 13)

            let style = TDSStyle(tdsFont: fontData)

            return TDSStyleStateSet(value: style)
        }()

    }
       
    public class Button {
        
        public static let example: TDSStyleStateSet = {
            return TDSDesignSystem.sharedInstance.styles?["example-button"] ?? TDSStyleStateSet(value: TDSStyle())
        }()
        
        private static let base: TDSStyle = {
            let fontData = Appearance.Text.button.default.tdsFont
            return TDSStyle(cornerRadius: 4,
                            padding: TDSEdgeInsets(top: Appearance.Spacing._3xs,
                                                   left: Appearance.Spacing._xs,
                                                   bottom: Appearance.Spacing._3xs,
                                                   right: Appearance.Spacing._xs),
                            tdsFont: fontData, maxTextLines: 1)
        }()
        
        private static let disabled: TDSStyle = {
            return base.combine(foregroundColor: Appearance.Color.secondary300,
                                backgroundColor: Appearance.Color.secondary50)
        }()
        
        public static let primary: TDSStyleStateSet = {
            let pressedBorderData = TDSBorderData(color: Appearance.Color.primary700,
                                                  width: 2, cornerRadius: 5,
                                                  insets: TDSEdgeInsets(value: -2))
            
            let `default` = base.combine(foregroundColor: Appearance.Color.secondary900, backgroundColor: Appearance.Color.primary400)
            let pressed = `default`.combine(border: pressedBorderData)
            let disabled = Appearance.Button.disabled
            
            return TDSStyleStateSet(default: `default`, pressed: pressed, disabled: disabled)
        }()
        
        public static let primaryIconRight: TDSStyleStateSet = {
            let adjustedPadding = TDSEdgeInsets(top: Appearance.Spacing._3xs,
                                                 left: Appearance.Spacing._xs,
                                                 bottom: Appearance.Spacing._3xs,
                                                 right: Appearance.Spacing._3xs)
            
            return primary.combine(with: TDSStyle(padding: adjustedPadding))
        }()
        
        public static let primaryIconLeft: TDSStyleStateSet = {
            let adjustedPadding = TDSEdgeInsets(top: Appearance.Spacing._3xs,
                                                 left: Appearance.Spacing._3xs,
                                                 bottom: Appearance.Spacing._3xs,
                                                 right: Appearance.Spacing._xs)
            
            return primary.combine(with: TDSStyle(padding: adjustedPadding))
        }()
        
        public static let secondary: TDSStyleStateSet = {
            let pressedBorderData = TDSBorderData(color: Appearance.Color.secondary300,
                                                  width: 2, cornerRadius: 5,
                                                  insets: TDSEdgeInsets(value: -2))
            
            let `default` = base.combine(foregroundColor: Appearance.Color.white,
                                         backgroundColor: Appearance.Color.secondary900)
            let pressed = `default`.combine(border: pressedBorderData)
            let disabled = Appearance.Button.disabled
            
            return TDSStyleStateSet(default: `default`, pressed: pressed, disabled: disabled)
        }()
        
        public static let secondaryIconLeft: TDSStyleStateSet = {
            let adjustedPadding = TDSEdgeInsets(top: Appearance.Spacing._3xs,
                                                 left: Appearance.Spacing._3xs,
                                                 bottom: Appearance.Spacing._3xs,
                                                 right: Appearance.Spacing._xs)
            
            return secondary.combine(with: TDSStyle(padding: adjustedPadding))
        }()
        
        public static let secondaryIconRight: TDSStyleStateSet = {
            let adjustedPadding = TDSEdgeInsets(top: Appearance.Spacing._3xs,
                                                 left: Appearance.Spacing._xs,
                                                 bottom: Appearance.Spacing._3xs,
                                                 right: Appearance.Spacing._3xs)
            
            return secondary.combine(with: TDSStyle(padding: adjustedPadding))
        }()
        
        public static let tertiary: TDSStyleStateSet = {
            let defaultBorderData = TDSBorderData(color: Appearance.Color.blueGray300,
                                                  width: 2,
                                                  cornerRadius: 5)
            let pressedBorderData = TDSBorderData(color: Appearance.Color.blueGray700,
                                                  width: 2,
                                                  cornerRadius: 5)
            
            let `default` = base.combine(foregroundColor: Appearance.Color.blueGray700,
                                         backgroundColor: Appearance.Color.white,
                                         border: defaultBorderData)
            let pressed = `default`.combine(border: pressedBorderData)
            let disabled = Appearance.Button.disabled
            
            return TDSStyleStateSet(default: `default`, pressed: pressed, disabled: disabled)
        }()
        
        public static let tertiaryIconLeft: TDSStyleStateSet = {
            let adjustedPadding = TDSEdgeInsets(top: Appearance.Spacing._3xs,
                                                 left: Appearance.Spacing._3xs,
                                                 bottom: Appearance.Spacing._3xs,
                                                 right: Appearance.Spacing._xs)
            
            return tertiary.combine(with: TDSStyle(padding: adjustedPadding))
        }()
        
        public static let tertiaryIconRight: TDSStyleStateSet = {
            let adjustedPadding = TDSEdgeInsets(top: Appearance.Spacing._3xs,
                                                 left: Appearance.Spacing._xs,
                                                 bottom: Appearance.Spacing._3xs,
                                                 right: Appearance.Spacing._3xs)
            
            return tertiary.combine(with: TDSStyle(padding: adjustedPadding))
        }()
    }
    
    // MARK: - Organisms
    
    public class Organisms {
        public static let baseCard: TDSStyleStateSet = {
            let style = TDSStyle(cornerRadius: Appearance.CornerRadius.feedCard,
                                 margin: TDSEdgeInsets(value: Appearance.Spacing._xs),
                                 border: TDSBorderData(color: Appearance.Color.blueGray200,
                                                       width: Appearance.BorderWidth.feedCard,
                                                       cornerRadius: Appearance.CornerRadius.feedCard))
            
            let pressedStyle = style.combine(padding: TDSEdgeInsets(value: -3))
            
            return TDSStyleStateSet(default: style, pressed: pressedStyle)
        }()
    }
}
