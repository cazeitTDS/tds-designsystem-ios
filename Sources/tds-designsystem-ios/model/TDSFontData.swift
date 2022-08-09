//
//  TDSFontData.swift
//  designsystem-ios
//
//  Created by Carl Zeitler on 29.06.22.
//

import Foundation
import SwiftUI
import UIKit

public struct TDSFontData: Codable {
    
    // MARK: - Types
    
    enum CodingKeys: String, CodingKey {
        case size = "size"
        case weight = "weight"
        case name = "name"
        
        case letterSpacing = "letter-spacing"
        case lineHeight = "line-height"
    }
    
    // MARK: - Properties
    
    public var uiFont: UIFont {
        var retVal: UIFont = UIFont.systemFont(ofSize: self.size,
                                               weight: weight.uiFontWeight)
        
        if let nameNotNil = self.name {
            var uiFontWithName: UIFont?
            let weightString = self.weight.rawValue.capitalized
            let nameWithWeight = "\(nameNotNil)-\(weightString)"
            
            uiFontWithName = UIFont(name: nameWithWeight, size: self.size)
            if let uiFontWithNameNotNil = uiFontWithName {
                retVal = uiFontWithNameNotNil
            }
            else {
                TDLogWarning("Could not find font for \"\(nameNotNil)\", falling back to system font.")
            }
        }
        return retVal
    }
    
    public var font: Font {
        return Font(self.uiFont)
    }
    
    public fileprivate(set) var size: CGFloat
    public fileprivate(set) var weight: TDSFontWeight
    public fileprivate(set) var name: String?
    
    public fileprivate(set) var letterSpacing: CGFloat = 0
    public fileprivate(set) var lineHeight: CGFloat = 0
}
