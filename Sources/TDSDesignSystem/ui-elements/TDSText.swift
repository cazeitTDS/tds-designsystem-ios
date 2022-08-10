//
//  BaseText.swift
//  designsystem-ios
//
//  Created by Carl Zeitler on 15.06.22.
//

import SwiftUI

public struct TDSText: View {
    
    // MARK: - Properties
    
    var text: String
    var style: TDSStyle
    
    var fixedHorizontalSize: Bool = false
    var fixedVerticalSize: Bool = false
    
    // MARK: - Body
    
    public var body: some View {
        Text(text)
            .style(style)
            .fixedSize(horizontal: fixedHorizontalSize,
                       vertical: fixedVerticalSize)
    }
    
    // MARK: - Public API
    
    public init(_ text: String,
                style: TDSStyle,
                fixedHorizontalSize: Bool = false,
                fixedVerticalSize: Bool = false) {
        self.text = text
        self.style = style
        
        self.fixedHorizontalSize = fixedHorizontalSize
        self.fixedVerticalSize = fixedVerticalSize
    }
    
    public init(_ text: String,
                styleStateSet: TDSStyleStateSet,
                fixedHorizontalSize: Bool = false,
                fixedVerticalSize: Bool = false) {
        self.init(text,
                  style: styleStateSet.default,
                  fixedHorizontalSize: fixedHorizontalSize,
                  fixedVerticalSize: fixedVerticalSize)
    }
}

struct TDSText_Previews: PreviewProvider {
    static var previews: some View {
        TDSDesignSystem.sharedInstance.setup()
        return VStack(spacing: 10) {
            TDSText("Test Text thats multiline, leading aligned",
                               style: TestValues.textStyle)
            
            TDSText("Test Text thats multiline, center aligned",
                        style: TestValues.textStyle.combine(textAlignment: .center))
            
            TDSText("Test Text thats multiline, trailing aligned",
                        style: TestValues.textStyle.combine(textAlignment: .end))
        }
    }
}
