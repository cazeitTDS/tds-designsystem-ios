   
    lazy var #variableName: TDSStyleStateSet = {
        let fontWeight = TDSFontWeight.fromFigmaString(#fontWeight)
        let fontData = TDSFontData(size: #fontSize, weight: fontWeight, letterSpacing: #letterSpacing, lineHeight: #lineHeight)

        let style = TDSStyle(tdsFont: fontData)

        return TDSStyleStateSet(value: style)
    }()