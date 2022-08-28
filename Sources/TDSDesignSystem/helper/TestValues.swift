//
//  TestValues.swift
//  designsystem-ios
//
//  Created by Carl Zeitler on 06.07.22.
//

import Foundation

class TestValues {
    
    // MARK: - Properties
    
    static var textStyle: TDSStyle {
        let border = TDSBorderData(color: TDSColor.black,
                               width: 1,
                               cornerRadius: 5)
        
        let font = TDSFontData(size: 20,
                           weight: .bold)
        
        return TDSStyle(foregroundColor: TDSColor(hexValue: "#8B0000"),
                        backgroundColor: TDSColor(hexValue: "#F1EB9C"),
                        padding: TDSEdgeInsets(value: 10),
                        border: border,
                        tdsFont: font,
                        textAlignment: .start)
    }
    
    static var imageStyle: TDSStyle {
        let border = TDSBorderData(color: TDSColor(hexValue: "#A3E77F"),
                               width: 2,
                               cornerRadius: 10)
        
        return TDSStyle(foregroundColor: TDSColor(hexValue: "#8B0000"),
                        backgroundColor: TDSColor(hexValue: "#F1EB9C"),
                        cornerRadius: 10,
                        padding: TDSEdgeInsets(value: 0),
                        border: border)
    }
    
    static var urlImageIconData: TDSIconData {
        return TDSIconData(url: "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg")
    }
    
    static var resourceImageIconData: TDSIconData {
        return TDSIconData(resourceId: "test_check_icon", width: 32, height: 32)
    }
    
    static var buttonStyleSet: TDSStyleStateSet {
        let disabledStyle = buttonStyle.combine(backgroundColor: TDSColor(hexValue: "#808080"))
        let highlightedStyle = buttonStyle.combine(foregroundColor: TDSColor(hexValue: "#0000FF"), padding: TDSEdgeInsets(value: 20))
        
        return TDSStyleStateSet(default: buttonStyle,
                                pressed: highlightedStyle,
                                disabled: disabledStyle)
    }
    
    private static var buttonStyle: TDSStyle {
        let border = TDSBorderData(color: TDSColor.black,
                               width: 2,
                               cornerRadius: 5)
        
        let font = TDSFontData(size: 20,
                           weight: .medium)
        
        let shadow = TDSShadow(color: TDSColor.black,
                               radius: 5,
                               offset: TDSOffset(horizontal: 2, vertical: 0))
        
        return TDSStyle(foregroundColor: TDSColor(hexValue: "#8B0000"),
                        backgroundColor: TDSColor(hexValue: "#F1EB9C"),
                        cornerRadius: 5,
                        padding: TDSEdgeInsets(value: 15),
                        border: border,
                        tdsFont: font,
                        maxTextLines: 1,
                        shadow: shadow)
    }
}
