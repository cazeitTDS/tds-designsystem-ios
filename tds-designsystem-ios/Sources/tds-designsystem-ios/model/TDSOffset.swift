//
//  TDSOffset.swift
//  designsystem-ios
//
//  Created by Carl Zeitler on 29.06.22.
//

import Foundation
import UIKit

public struct TDSOffset: Codable {
    
    // MARK: - Types
    
    enum CodingKeys: String, CodingKey {
        case horizontal
        case vertical
    }
    
    // MARK: - Properties
    
    var horizontal: CGFloat
    var vertical: CGFloat
    
    // MARK: - Public API
    
    public init(horizontal: CGFloat, vertical: CGFloat) {
        self.horizontal = horizontal
        self.vertical = vertical
    }
    
    public init(size: CGSize) {
        self.init(horizontal: size.width,
                  vertical: size.height)
    }
}
