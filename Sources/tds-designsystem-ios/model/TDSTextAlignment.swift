//
//  TDSTextAlignment.swift
//  designsystem-ios
//
//  Created by Carl Zeitler on 06.07.22.
//

import Foundation
import SwiftUI

public enum TDSTextAlignment: String, Codable {
    case start
    case center
    case end
    
    public var textAlignment: TextAlignment {
        switch self {
            case .start:
                return .leading
            case .center:
                return .center
            case .end:
                return .trailing
        }
    }
}
