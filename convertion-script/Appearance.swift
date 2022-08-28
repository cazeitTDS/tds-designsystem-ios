
import SwiftUI

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
        public static let black = TDSColor(hex: "#000000")
        public static let white = TDSColor(hex: "#ffffff")
        public static let typographyDefault = TDSColor(hex: "#111827")
        public static let green900 = TDSColor(hex: "#14532d")
        public static let green800 = TDSColor(hex: "#166534")
        public static let green700 = TDSColor(hex: "#15803d")
        public static let green600 = TDSColor(hex: "#16a34a")
        public static let green500 = TDSColor(hex: "#22c55e")
        public static let green400 = TDSColor(hex: "#4ade80")
        public static let green300 = TDSColor(hex: "#86efac")
        public static let green200 = TDSColor(hex: "#bbf7d0")
        public static let green100 = TDSColor(hex: "#dcfce7")
        public static let green50 = TDSColor(hex: "#f0fdf4")
        public static let yellow900 = TDSColor(hex: "#713f12")
        public static let yellow800 = TDSColor(hex: "#854d0e")
        public static let yellow700 = TDSColor(hex: "#a16207")
        public static let yellow600 = TDSColor(hex: "#ca8a04")
        public static let yellow500 = TDSColor(hex: "#eab308")
        public static let yellow400 = TDSColor(hex: "#facc15")
        public static let yellow300 = TDSColor(hex: "#fde047")
        public static let yellow200 = TDSColor(hex: "#fef08a")
        public static let yellow100 = TDSColor(hex: "#fef9c3")
        public static let yellow50 = TDSColor(hex: "#fefce8")
        public static let red900 = TDSColor(hex: "#7f1d1d")
        public static let red800 = TDSColor(hex: "#991b1b")
        public static let red700 = TDSColor(hex: "#b91c1c")
        public static let red600 = TDSColor(hex: "#dc2626")
        public static let red500 = TDSColor(hex: "#ef4444")
        public static let red400 = TDSColor(hex: "#f87171")
        public static let red300 = TDSColor(hex: "#fca5a5")
        public static let red200 = TDSColor(hex: "#fecaca")
        public static let red100 = TDSColor(hex: "#fee2e2")
        public static let red50 = TDSColor(hex: "#fef2f2")
        public static let gray900 = TDSColor(hex: "#18181b")
        public static let gray800 = TDSColor(hex: "#27272a")
        public static let gray700 = TDSColor(hex: "#3f3f46")
        public static let gray600 = TDSColor(hex: "#52525b")
        public static let gray500 = TDSColor(hex: "#71717a")
        public static let gray400 = TDSColor(hex: "#a1a1aa")
        public static let gray300 = TDSColor(hex: "#d4d4d8")
        public static let gray200 = TDSColor(hex: "#e4e4e7")
        public static let gray100 = TDSColor(hex: "#f4f4f5")
        public static let gray50 = TDSColor(hex: "#f9fafb")
        public static let blueGray900 = TDSColor(hex: "#111826")
        public static let blueGray800 = TDSColor(hex: "#1e293a")
        public static let blueGray700 = TDSColor(hex: "#334154")
        public static let blueGray600 = TDSColor(hex: "#475568")
        public static let blueGray500 = TDSColor(hex: "#64748a")
        public static let blueGray400 = TDSColor(hex: "#94a3b7")
        public static let blueGray300 = TDSColor(hex: "#cbd5e0")
        public static let blueGray200 = TDSColor(hex: "#e2e8f0")
        public static let blueGray100 = TDSColor(hex: "#f1f5f9")
        public static let blueGray50 = TDSColor(hex: "#f8fafc")
        public static let secondary900 = TDSColor(hex: "#1f1144")
        public static let secondary800 = TDSColor(hex: "#31285b")
        public static let secondary700 = TDSColor(hex: "#443f70")
        public static let secondary600 = TDSColor(hex: "#575886")
        public static let secondary500 = TDSColor(hex: "#70749a")
        public static let secondary400 = TDSColor(hex: "#8990ae")
        public static let secondary300 = TDSColor(hex: "#a3acc2")
        public static let secondary200 = TDSColor(hex: "#bec6d5")
        public static let secondary100 = TDSColor(hex: "#dadfe7")
        public static let secondary50 = TDSColor(hex: "#f5f7f9")
        public static let primary900 = TDSColor(hex: "#095454")
        public static let primary800 = TDSColor(hex: "#137676")
        public static let primary700 = TDSColor(hex: "#219996")
        public static let primary600 = TDSColor(hex: "#32bbaf")
        public static let primary500 = TDSColor(hex: "#47d5c6")
        public static let primary400 = TDSColor(hex: "#60e8da")
        public static let primary300 = TDSColor(hex: "#81ede2")
        public static let primary200 = TDSColor(hex: "#a3f2ea")
        public static let primary100 = TDSColor(hex: "#e0fbf8")
        public static let primary50 = TDSColor(hex: "#f2fdfc")
        public static let coolGray100 = TDSColor(hex: "#f3f4f6")
        public static let coolGray50 = TDSColor(hex: "#f9fafb")
    }

    // MARK: - Texts
   
    lazy var button: TDSStyleStateSet {
        let fontWeight = TDSFontWeight(figmaString: "Semibold")
        let fontData = TDSFontData(size: 13, weight: fontWeight, letterSpacing: -0.08, lineHeight: 18)

        let style = TDSStyle(fontData: fontData)

        return TDSStyleStateSet(value: style)
    }
   
    lazy var largeTitleSemibold: TDSStyleStateSet {
        let fontWeight = TDSFontWeight(figmaString: "Bold")
        let fontData = TDSFontData(size: 34, weight: fontWeight, letterSpacing: 0.37, lineHeight: 41)

        let style = TDSStyle(fontData: fontData)

        return TDSStyleStateSet(value: style)
    }
   
    lazy var title1Semibold: TDSStyleStateSet {
        let fontWeight = TDSFontWeight(figmaString: "Bold")
        let fontData = TDSFontData(size: 28, weight: fontWeight, letterSpacing: 0.36, lineHeight: 34)

        let style = TDSStyle(fontData: fontData)

        return TDSStyleStateSet(value: style)
    }
   
    lazy var title2Semibold: TDSStyleStateSet {
        let fontWeight = TDSFontWeight(figmaString: "Bold")
        let fontData = TDSFontData(size: 22, weight: fontWeight, letterSpacing: 0.35, lineHeight: 28)

        let style = TDSStyle(fontData: fontData)

        return TDSStyleStateSet(value: style)
    }
   
    lazy var title3Semibold: TDSStyleStateSet {
        let fontWeight = TDSFontWeight(figmaString: "Semibold")
        let fontData = TDSFontData(size: 20, weight: fontWeight, letterSpacing: 0.38, lineHeight: 24)

        let style = TDSStyle(fontData: fontData)

        return TDSStyleStateSet(value: style)
    }
   
    lazy var headlineSemibold: TDSStyleStateSet {
        let fontWeight = TDSFontWeight(figmaString: "Semibold")
        let fontData = TDSFontData(size: 17, weight: fontWeight, letterSpacing: -0.41, lineHeight: 22)

        let style = TDSStyle(fontData: fontData)

        return TDSStyleStateSet(value: style)
    }
   
    lazy var bodySemibold: TDSStyleStateSet {
        let fontWeight = TDSFontWeight(figmaString: "Semibold")
        let fontData = TDSFontData(size: 17, weight: fontWeight, letterSpacing: -0.41, lineHeight: 22)

        let style = TDSStyle(fontData: fontData)

        return TDSStyleStateSet(value: style)
    }
   
    lazy var calloutSemibold: TDSStyleStateSet {
        let fontWeight = TDSFontWeight(figmaString: "Semibold")
        let fontData = TDSFontData(size: 16, weight: fontWeight, letterSpacing: -0.32, lineHeight: 21)

        let style = TDSStyle(fontData: fontData)

        return TDSStyleStateSet(value: style)
    }
   
    lazy var subheadlineSemibold: TDSStyleStateSet {
        let fontWeight = TDSFontWeight(figmaString: "Semibold")
        let fontData = TDSFontData(size: 15, weight: fontWeight, letterSpacing: -0.5, lineHeight: 20)

        let style = TDSStyle(fontData: fontData)

        return TDSStyleStateSet(value: style)
    }
   
    lazy var footnoteSemibold: TDSStyleStateSet {
        let fontWeight = TDSFontWeight(figmaString: "Semibold")
        let fontData = TDSFontData(size: 13, weight: fontWeight, letterSpacing: -0.08, lineHeight: 18)

        let style = TDSStyle(fontData: fontData)

        return TDSStyleStateSet(value: style)
    }
   
    lazy var caption1Semibold: TDSStyleStateSet {
        let fontWeight = TDSFontWeight(figmaString: "Medium")
        let fontData = TDSFontData(size: 12, weight: fontWeight, letterSpacing: 0, lineHeight: 16)

        let style = TDSStyle(fontData: fontData)

        return TDSStyleStateSet(value: style)
    }
   
    lazy var caption2Semibold: TDSStyleStateSet {
        let fontWeight = TDSFontWeight(figmaString: "Semibold")
        let fontData = TDSFontData(size: 11, weight: fontWeight, letterSpacing: 0.06, lineHeight: 13)

        let style = TDSStyle(fontData: fontData)

        return TDSStyleStateSet(value: style)
    }
   
    lazy var largeTitleRegular: TDSStyleStateSet {
        let fontWeight = TDSFontWeight(figmaString: "Regular")
        let fontData = TDSFontData(size: 34, weight: fontWeight, letterSpacing: 0.37, lineHeight: 41)

        let style = TDSStyle(fontData: fontData)

        return TDSStyleStateSet(value: style)
    }
   
    lazy var title3Regular: TDSStyleStateSet {
        let fontWeight = TDSFontWeight(figmaString: "Regular")
        let fontData = TDSFontData(size: 20, weight: fontWeight, letterSpacing: 0.38, lineHeight: 24)

        let style = TDSStyle(fontData: fontData)

        return TDSStyleStateSet(value: style)
    }
   
    lazy var bodyRegular: TDSStyleStateSet {
        let fontWeight = TDSFontWeight(figmaString: "Regular")
        let fontData = TDSFontData(size: 17, weight: fontWeight, letterSpacing: -0.41, lineHeight: 22)

        let style = TDSStyle(fontData: fontData)

        return TDSStyleStateSet(value: style)
    }
   
    lazy var calloutRegular: TDSStyleStateSet {
        let fontWeight = TDSFontWeight(figmaString: "Regular")
        let fontData = TDSFontData(size: 16, weight: fontWeight, letterSpacing: -0.32, lineHeight: 21)

        let style = TDSStyle(fontData: fontData)

        return TDSStyleStateSet(value: style)
    }
   
    lazy var subheadlineRegular: TDSStyleStateSet {
        let fontWeight = TDSFontWeight(figmaString: "Regular")
        let fontData = TDSFontData(size: 15, weight: fontWeight, letterSpacing: -0.24, lineHeight: 20)

        let style = TDSStyle(fontData: fontData)

        return TDSStyleStateSet(value: style)
    }
   
    lazy var footnoteRegular: TDSStyleStateSet {
        let fontWeight = TDSFontWeight(figmaString: "Regular")
        let fontData = TDSFontData(size: 13, weight: fontWeight, letterSpacing: -0.08, lineHeight: 18)

        let style = TDSStyle(fontData: fontData)

        return TDSStyleStateSet(value: style)
    }
   
    lazy var headlineRegular: TDSStyleStateSet {
        let fontWeight = TDSFontWeight(figmaString: "Semibold")
        let fontData = TDSFontData(size: 17, weight: fontWeight, letterSpacing: -0.41, lineHeight: 22)

        let style = TDSStyle(fontData: fontData)

        return TDSStyleStateSet(value: style)
    }
   
    lazy var title2Regular: TDSStyleStateSet {
        let fontWeight = TDSFontWeight(figmaString: "Regular")
        let fontData = TDSFontData(size: 22, weight: fontWeight, letterSpacing: 0.35, lineHeight: 28)

        let style = TDSStyle(fontData: fontData)

        return TDSStyleStateSet(value: style)
    }
   
    lazy var title1Regular: TDSStyleStateSet {
        let fontWeight = TDSFontWeight(figmaString: "Regular")
        let fontData = TDSFontData(size: 28, weight: fontWeight, letterSpacing: 0.36, lineHeight: 34)

        let style = TDSStyle(fontData: fontData)

        return TDSStyleStateSet(value: style)
    }
   
    lazy var caption1Regular: TDSStyleStateSet {
        let fontWeight = TDSFontWeight(figmaString: "Regular")
        let fontData = TDSFontData(size: 12, weight: fontWeight, letterSpacing: 0, lineHeight: 16)

        let style = TDSStyle(fontData: fontData)

        return TDSStyleStateSet(value: style)
    }
   
    lazy var caption2Regular: TDSStyleStateSet {
        let fontWeight = TDSFontWeight(figmaString: "Regular")
        let fontData = TDSFontData(size: 11, weight: fontWeight, letterSpacing: 0.07, lineHeight: 13)

        let style = TDSStyle(fontData: fontData)

        return TDSStyleStateSet(value: style)
    }
   
    lazy var headline1: TDSStyleStateSet {
        let fontWeight = TDSFontWeight(figmaString: "Semibold")
        let fontData = TDSFontData(size: 13, weight: fontWeight, letterSpacing: -0.41, lineHeight: 22)

        let style = TDSStyle(fontData: fontData)

        return TDSStyleStateSet(value: style)
    }
   
    lazy var title2: TDSStyleStateSet {
        let fontWeight = TDSFontWeight(figmaString: "Regular")
        let fontData = TDSFontData(size: 15, weight: fontWeight, letterSpacing: 0.35, lineHeight: 28)

        let style = TDSStyle(fontData: fontData)

        return TDSStyleStateSet(value: style)
    }
   
    lazy var title1: TDSStyleStateSet {
        let fontWeight = TDSFontWeight(figmaString: "Regular")
        let fontData = TDSFontData(size: 16, weight: fontWeight, letterSpacing: 0.36, lineHeight: 34)

        let style = TDSStyle(fontData: fontData)

        return TDSStyleStateSet(value: style)
    }
   
    lazy var caption1: TDSStyleStateSet {
        let fontWeight = TDSFontWeight(figmaString: "Regular")
        let fontData = TDSFontData(size: 12, weight: fontWeight, letterSpacing: 0, lineHeight: 16)

        let style = TDSStyle(fontData: fontData)

        return TDSStyleStateSet(value: style)
    }
   
    lazy var caption2: TDSStyleStateSet {
        let fontWeight = TDSFontWeight(figmaString: "Regular")
        let fontData = TDSFontData(size: 11, weight: fontWeight, letterSpacing: 0.07, lineHeight: 13)

        let style = TDSStyle(fontData: fontData)

        return TDSStyleStateSet(value: style)
    }
}