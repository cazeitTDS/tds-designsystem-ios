   
    lazy var #variableName: TDSStyleStateSet {
        let fontWeight = TDSFontWeight(figmaString: #fontWeight)
        let fontData = TDSFontData(size: #fontSize, weight: fontWeight, letterSpacing: #letterSpacing, lineHeight: #lineHeight)

        let style = TDSStyle(fontData: fontData)

        return TDSStyleStateSet(value: style)
    }