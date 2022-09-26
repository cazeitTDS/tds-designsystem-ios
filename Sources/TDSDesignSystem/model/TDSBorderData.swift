//
//  TDSBorder.swift
//  designsystem-ios
//
//  Created by Carl Zeitler on 29.06.22.
//

import Foundation
import UIKit

public struct TDSBorderData: Codable {
    
    // MARK: - Types
    
    enum CodingKeys: String, CodingKey {
        case color
        case width
        
        case cornerRadius = "corner-radius"
        case insets = "insets"
    }
    
    // MARK: - Properties
    
    public fileprivate(set) var color: TDSColor = TDSColor.clear
    public fileprivate(set) var width: CGFloat = 0
    public fileprivate(set) var cornerRadius: CGFloat = 0
    
    public fileprivate(set) var insets: TDSEdgeInsets = TDSEdgeInsets()
    
    // MARK: - Public API
    
    public init() {}
    
    public init(color: TDSColor,
                width: CGFloat = 0,
                cornerRadius: CGFloat = 0,
                insets: TDSEdgeInsets = TDSEdgeInsets()) {
        self.color = color
        self.width = width
        self.cornerRadius = cornerRadius
        
        self.insets = insets
    }
}
