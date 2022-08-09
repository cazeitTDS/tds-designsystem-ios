//
//  TDSDesignSystemConfig.swift
//  designsystem-ios
//
//  Created by Carl Zeitler on 30.06.22.
//

import SwiftUI

class TDSDesignSystemConfig: Codable {
    
    // MARK: - Types
    
    enum CodingKeys: String, CodingKey {
        case defaultStyle = "default-style"
        case styles
    }
    
    // MARK: - Properties
    
    var defaultStyle: TDSStyle?
    var styles: Dictionary<String, TDSStyleStateSet>?
}
