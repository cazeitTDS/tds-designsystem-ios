//
//  TDSFontWeight.swift
//  designsystem-ios
//
//  Created by Carl Zeitler on 14.06.22.
//

import Foundation
import SwiftUI

public enum TDSFontWeight: String, Codable {
    case ultraLight
    case thin
    case light
    
    case regular
    case medium
    case semibold
    
    case bold
    case heavy
    case black
    
    // MARK: - Properties
    
    public var weight: Font.Weight {
        switch self {
            case .ultraLight:
                return .ultraLight
            case .thin:
                return .thin
            case .light:
                return .light
            case .regular:
                return .regular
            case .medium:
                return .medium
            case .semibold:
                return .semibold
            case .bold:
                return .bold
            case .heavy:
                return .heavy
            case .black:
                return .black
        }
    }
    
    public var uiFontWeight: UIFont.Weight {
        switch self {
            case .ultraLight:
                return .ultraLight
            case .thin:
                return .thin
            case .light:
                return .light
            case .regular:
                return .regular
            case .medium:
                return .medium
            case .semibold:
                return .semibold
            case .bold:
                return .bold
            case .heavy:
                return .heavy
            case .black:
                return .black
        }
    }
    
    // TODOCARL: explore all possibilities
    public static func fromFigmaString(_ figmaString: String) -> TDSFontWeight {
        return self.init(rawValue: figmaString.lowercased()) ?? .medium
    }
}
