//
//  TDSShadow.swift
//  designsystem-ios
//
//  Created by Carl Zeitler on 15.06.22.
//

import Foundation
import SwiftUI

public struct TDSShadow: Codable {
    
    // MARK: - Types
    
    enum CodingKeys: String, CodingKey {
        case color
        case radius
        case offset
    }
    
    // MARK: - Properties
    
    public fileprivate(set) var color: TDSColor
    public fileprivate(set) var radius: CGFloat
    public fileprivate(set) var offset: TDSOffset
    
    // MARK: - Public API
    
    public init(color: TDSColor,
         radius: CGFloat,
         offset: TDSOffset) {
        self.color = color
        self.offset = offset
        self.radius = radius
    }
}
