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
    }
    
    // MARK: - Properties
    
    public fileprivate(set) var color: TDSColor = TDSColor.clear
    public fileprivate(set) var width: CGFloat = 0
    public fileprivate(set) var cornerRadius: CGFloat = 0
}
