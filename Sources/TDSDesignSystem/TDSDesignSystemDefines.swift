//
//  TDSDesignSystemDefines.swift
//  designsystem-ios
//
//  Created by Carl Zeitler on 29.06.22.
//

import Foundation

class TDSDesignSystemDefines {
    
    // MARK: - Properties
    
    static var bundle: Bundle {
        return Bundle(for: Self.self)
    }
    
    static var mainBundle: Bundle {
        return Bundle.main
    }
    
    static var configFileName: String {
        return "designsystem-config"
    }
    
    static var configFileFallbackName: String {
        return "designsystem-config-fallback"
    }
}
