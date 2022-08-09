//
//  TDSFontWeight.swift
//  designsystem-ios
//
//  Created by Carl Zeitler on 14.06.22.
//

import Foundation
import SwiftUI

public enum TDSFontWeight: String, Codable {
    
    case bold
    case semibold
    case medium
    
    case regular
    case light
    
    // MARK: - Properties
    
    public var weight: Font.Weight {
        switch self {
            case .bold:
                return .bold
            case .semibold:
                return .semibold
            case .medium:
                return .medium
            case .regular:
                return .regular
            case .light:
                return .light
        }
    }
    
    public var uiFontWeight: UIFont.Weight {
        switch self {
            case .bold:
                return .bold
            case .semibold:
                return .semibold
            case .medium:
                return .medium
            case .regular:
                return .regular
            case .light:
                return .light
        }
    }
}
