
import SwiftUI
import TDSDesignSystem

public class Appearance {
    
    // MARK: - Spacings

    public class Spacing {
        public static let _5xl = 80
        public static let _4xl = 72
        public static let _3xl = 64
        public static let _2xl = 56
        public static let _xl = 48
        public static let _l = 40
        public static let _m = 32
        public static let _s = 24
        public static let _xs = 16
        public static let _2xs = 12
        public static let _3xs = 8
        public static let _4xs = 4
    }

    // MARK: - Colors

    public class Color {
        public static let black = TDSColor(hexValue: "#000000")
        public static let white = TDSColor(hexValue: "#ffffff")
        public static let typographyDefault = TDSColor(hexValue: "#111827")
        public static let green900 = TDSColor(hexValue: "#14532d")
        public static let green800 = TDSColor(hexValue: "#166534")
        public static let green700 = TDSColor(hexValue: "#15803d")
        public static let green600 = TDSColor(hexValue: "#16a34a")
        public static let green500 = TDSColor(hexValue: "#22c55e")
        public static let green400 = TDSColor(hexValue: "#4ade80")
        public static let green300 = TDSColor(hexValue: "#86efac")
        public static let green200 = TDSColor(hexValue: "#bbf7d0")
        public static let green100 = TDSColor(hexValue: "#dcfce7")
        public static let green50 = TDSColor(hexValue: "#f0fdf4")
        public static let yellow900 = TDSColor(hexValue: "#713f12")
        public static let yellow800 = TDSColor(hexValue: "#854d0e")
        public static let yellow700 = TDSColor(hexValue: "#a16207")
        public static let yellow600 = TDSColor(hexValue: "#ca8a04")
        public static let yellow500 = TDSColor(hexValue: "#eab308")
        public static let yellow400 = TDSColor(hexValue: "#facc15")
        public static let yellow300 = TDSColor(hexValue: "#fde047")
        public static let yellow200 = TDSColor(hexValue: "#fef08a")
        public static let yellow100 = TDSColor(hexValue: "#fef9c3")
        public static let yellow50 = TDSColor(hexValue: "#fefce8")
        public static let red900 = TDSColor(hexValue: "#7f1d1d")
        public static let red800 = TDSColor(hexValue: "#991b1b")
        public static let red700 = TDSColor(hexValue: "#b91c1c")
        public static let red600 = TDSColor(hexValue: "#dc2626")
        public static let red500 = TDSColor(hexValue: "#ef4444")
        public static let red400 = TDSColor(hexValue: "#f87171")
        public static let red300 = TDSColor(hexValue: "#fca5a5")
        public static let red200 = TDSColor(hexValue: "#fecaca")
        public static let red100 = TDSColor(hexValue: "#fee2e2")
        public static let red50 = TDSColor(hexValue: "#fef2f2")
        public static let gray900 = TDSColor(hexValue: "#18181b")
        public static let gray800 = TDSColor(hexValue: "#27272a")
        public static let gray700 = TDSColor(hexValue: "#3f3f46")
        public static let gray600 = TDSColor(hexValue: "#52525b")
        public static let gray500 = TDSColor(hexValue: "#71717a")
        public static let gray400 = TDSColor(hexValue: "#a1a1aa")
        public static let gray300 = TDSColor(hexValue: "#d4d4d8")
        public static let gray200 = TDSColor(hexValue: "#e4e4e7")
        public static let gray100 = TDSColor(hexValue: "#f4f4f5")
        public static let gray50 = TDSColor(hexValue: "#f9fafb")
        public static let blueGray900 = TDSColor(hexValue: "#111826")
        public static let blueGray800 = TDSColor(hexValue: "#1e293a")
        public static let blueGray700 = TDSColor(hexValue: "#334154")
        public static let blueGray600 = TDSColor(hexValue: "#475568")
        public static let blueGray500 = TDSColor(hexValue: "#64748a")
        public static let blueGray400 = TDSColor(hexValue: "#94a3b7")
        public static let blueGray300 = TDSColor(hexValue: "#cbd5e0")
        public static let blueGray200 = TDSColor(hexValue: "#e2e8f0")
        public static let blueGray100 = TDSColor(hexValue: "#f1f5f9")
        public static let blueGray50 = TDSColor(hexValue: "#f8fafc")
        public static let secondary900 = TDSColor(hexValue: "#1f1144")
        public static let secondary800 = TDSColor(hexValue: "#31285b")
        public static let secondary700 = TDSColor(hexValue: "#443f70")
        public static let secondary600 = TDSColor(hexValue: "#575886")
        public static let secondary500 = TDSColor(hexValue: "#70749a")
        public static let secondary400 = TDSColor(hexValue: "#8990ae")
        public static let secondary300 = TDSColor(hexValue: "#a3acc2")
        public static let secondary200 = TDSColor(hexValue: "#bec6d5")
        public static let secondary100 = TDSColor(hexValue: "#dadfe7")
        public static let secondary50 = TDSColor(hexValue: "#f5f7f9")
        public static let primary900 = TDSColor(hexValue: "#095454")
        public static let primary800 = TDSColor(hexValue: "#137676")
        public static let primary700 = TDSColor(hexValue: "#219996")
        public static let primary600 = TDSColor(hexValue: "#32bbaf")
        public static let primary500 = TDSColor(hexValue: "#47d5c6")
        public static let primary400 = TDSColor(hexValue: "#60e8da")
        public static let primary300 = TDSColor(hexValue: "#81ede2")
        public static let primary200 = TDSColor(hexValue: "#a3f2ea")
        public static let primary100 = TDSColor(hexValue: "#e0fbf8")
        public static let primary50 = TDSColor(hexValue: "#f2fdfc")
    }

    // MARK: - Texts

    public class Text {
   
        public static var button: TDSStyleStateSet {
            let fontWeight = TDSFontWeight.fromFigmaString("Semibold")
            let fontData = TDSFontData(size: 13, weight: fontWeight, letterSpacing: -0.08, lineHeight: 18)

            let style = TDSStyle(tdsFont: fontData)

            return TDSStyleStateSet(value: style)
        }
   
        public static var largeTitleSemibold: TDSStyleStateSet {
            let fontWeight = TDSFontWeight.fromFigmaString("Bold")
            let fontData = TDSFontData(size: 34, weight: fontWeight, letterSpacing: 0.37, lineHeight: 41)

            let style = TDSStyle(tdsFont: fontData)

            return TDSStyleStateSet(value: style)
        }
   
        public static var title1Semibold: TDSStyleStateSet {
            let fontWeight = TDSFontWeight.fromFigmaString("Bold")
            let fontData = TDSFontData(size: 28, weight: fontWeight, letterSpacing: 0.36, lineHeight: 34)

            let style = TDSStyle(tdsFont: fontData)

            return TDSStyleStateSet(value: style)
        }
   
        public static var title2Semibold: TDSStyleStateSet {
            let fontWeight = TDSFontWeight.fromFigmaString("Bold")
            let fontData = TDSFontData(size: 22, weight: fontWeight, letterSpacing: 0.35, lineHeight: 28)

            let style = TDSStyle(tdsFont: fontData)

            return TDSStyleStateSet(value: style)
        }
   
        public static var title3Semibold: TDSStyleStateSet {
            let fontWeight = TDSFontWeight.fromFigmaString("Semibold")
            let fontData = TDSFontData(size: 20, weight: fontWeight, letterSpacing: 0.38, lineHeight: 24)

            let style = TDSStyle(tdsFont: fontData)

            return TDSStyleStateSet(value: style)
        }
   
        public static var headlineSemibold: TDSStyleStateSet {
            let fontWeight = TDSFontWeight.fromFigmaString("Semibold")
            let fontData = TDSFontData(size: 17, weight: fontWeight, letterSpacing: -0.41, lineHeight: 22)

            let style = TDSStyle(tdsFont: fontData)

            return TDSStyleStateSet(value: style)
        }
   
        public static var bodySemibold: TDSStyleStateSet {
            let fontWeight = TDSFontWeight.fromFigmaString("Semibold")
            let fontData = TDSFontData(size: 17, weight: fontWeight, letterSpacing: -0.41, lineHeight: 22)

            let style = TDSStyle(tdsFont: fontData)

            return TDSStyleStateSet(value: style)
        }
   
        public static var calloutSemibold: TDSStyleStateSet {
            let fontWeight = TDSFontWeight.fromFigmaString("Semibold")
            let fontData = TDSFontData(size: 16, weight: fontWeight, letterSpacing: -0.32, lineHeight: 21)

            let style = TDSStyle(tdsFont: fontData)

            return TDSStyleStateSet(value: style)
        }
   
        public static var subheadlineSemibold: TDSStyleStateSet {
            let fontWeight = TDSFontWeight.fromFigmaString("Semibold")
            let fontData = TDSFontData(size: 15, weight: fontWeight, letterSpacing: -0.5, lineHeight: 20)

            let style = TDSStyle(tdsFont: fontData)

            return TDSStyleStateSet(value: style)
        }
   
        public static var footnoteSemibold: TDSStyleStateSet {
            let fontWeight = TDSFontWeight.fromFigmaString("Semibold")
            let fontData = TDSFontData(size: 13, weight: fontWeight, letterSpacing: -0.08, lineHeight: 18)

            let style = TDSStyle(tdsFont: fontData)

            return TDSStyleStateSet(value: style)
        }
   
        public static var caption1Semibold: TDSStyleStateSet {
            let fontWeight = TDSFontWeight.fromFigmaString("Medium")
            let fontData = TDSFontData(size: 12, weight: fontWeight, letterSpacing: 0, lineHeight: 16)

            let style = TDSStyle(tdsFont: fontData)

            return TDSStyleStateSet(value: style)
        }
   
        public static var caption2Semibold: TDSStyleStateSet {
            let fontWeight = TDSFontWeight.fromFigmaString("Semibold")
            let fontData = TDSFontData(size: 11, weight: fontWeight, letterSpacing: 0.06, lineHeight: 13)

            let style = TDSStyle(tdsFont: fontData)

            return TDSStyleStateSet(value: style)
        }
   
        public static var largeTitleRegular: TDSStyleStateSet {
            let fontWeight = TDSFontWeight.fromFigmaString("Regular")
            let fontData = TDSFontData(size: 34, weight: fontWeight, letterSpacing: 0.37, lineHeight: 41)

            let style = TDSStyle(tdsFont: fontData)

            return TDSStyleStateSet(value: style)
        }
   
        public static var title3Regular: TDSStyleStateSet {
            let fontWeight = TDSFontWeight.fromFigmaString("Regular")
            let fontData = TDSFontData(size: 20, weight: fontWeight, letterSpacing: 0.38, lineHeight: 24)

            let style = TDSStyle(tdsFont: fontData)

            return TDSStyleStateSet(value: style)
        }
   
        public static var bodyRegular: TDSStyleStateSet {
            let fontWeight = TDSFontWeight.fromFigmaString("Regular")
            let fontData = TDSFontData(size: 17, weight: fontWeight, letterSpacing: -0.41, lineHeight: 22)

            let style = TDSStyle(tdsFont: fontData)

            return TDSStyleStateSet(value: style)
        }
   
        public static var calloutRegular: TDSStyleStateSet {
            let fontWeight = TDSFontWeight.fromFigmaString("Regular")
            let fontData = TDSFontData(size: 16, weight: fontWeight, letterSpacing: -0.32, lineHeight: 21)

            let style = TDSStyle(tdsFont: fontData)

            return TDSStyleStateSet(value: style)
        }
   
        public static var subheadlineRegular: TDSStyleStateSet {
            let fontWeight = TDSFontWeight.fromFigmaString("Regular")
            let fontData = TDSFontData(size: 15, weight: fontWeight, letterSpacing: -0.24, lineHeight: 20)

            let style = TDSStyle(tdsFont: fontData)

            return TDSStyleStateSet(value: style)
        }
   
        public static var footnoteRegular: TDSStyleStateSet {
            let fontWeight = TDSFontWeight.fromFigmaString("Regular")
            let fontData = TDSFontData(size: 13, weight: fontWeight, letterSpacing: -0.08, lineHeight: 18)

            let style = TDSStyle(tdsFont: fontData)

            return TDSStyleStateSet(value: style)
        }
   
        public static var headlineRegular: TDSStyleStateSet {
            let fontWeight = TDSFontWeight.fromFigmaString("Semibold")
            let fontData = TDSFontData(size: 17, weight: fontWeight, letterSpacing: -0.41, lineHeight: 22)

            let style = TDSStyle(tdsFont: fontData)

            return TDSStyleStateSet(value: style)
        }
   
        public static var title2Regular: TDSStyleStateSet {
            let fontWeight = TDSFontWeight.fromFigmaString("Regular")
            let fontData = TDSFontData(size: 22, weight: fontWeight, letterSpacing: 0.35, lineHeight: 28)

            let style = TDSStyle(tdsFont: fontData)

            return TDSStyleStateSet(value: style)
        }
   
        public static var title1Regular: TDSStyleStateSet {
            let fontWeight = TDSFontWeight.fromFigmaString("Regular")
            let fontData = TDSFontData(size: 28, weight: fontWeight, letterSpacing: 0.36, lineHeight: 34)

            let style = TDSStyle(tdsFont: fontData)

            return TDSStyleStateSet(value: style)
        }
   
        public static var caption1Regular: TDSStyleStateSet {
            let fontWeight = TDSFontWeight.fromFigmaString("Regular")
            let fontData = TDSFontData(size: 12, weight: fontWeight, letterSpacing: 0, lineHeight: 16)

            let style = TDSStyle(tdsFont: fontData)

            return TDSStyleStateSet(value: style)
        }
   
        public static var caption2Regular: TDSStyleStateSet {
            let fontWeight = TDSFontWeight.fromFigmaString("Regular")
            let fontData = TDSFontData(size: 11, weight: fontWeight, letterSpacing: 0.07, lineHeight: 13)

            let style = TDSStyle(tdsFont: fontData)

            return TDSStyleStateSet(value: style)
        }
    }
}