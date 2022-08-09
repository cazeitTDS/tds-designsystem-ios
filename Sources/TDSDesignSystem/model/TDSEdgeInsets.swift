//
//  TDSEdgeInsets.swift
//  designsystem-ios
//
//  Created by Carl Zeitler on 14.06.22.
//

import Foundation
import SwiftUI

public struct TDSEdgeInsets: Codable {
    
    // MARK: - Properties
    
    public fileprivate(set) var top: CGFloat
    public fileprivate(set) var left: CGFloat
    public fileprivate(set) var bottom: CGFloat
    
    public fileprivate(set) var right: CGFloat
    
    public var edgeInsets: SwiftUI.EdgeInsets {
        return SwiftUI.EdgeInsets(top: top,
                                  leading: left,
                                  bottom: bottom,
                                  trailing: right)
    }
    
    // MARK: - Public API
    
    public init(top: CGFloat = 0,
                left: CGFloat = 0,
                bottom: CGFloat = 0,
                right: CGFloat = 0) {
        self.top = top
        self.left = left
        self.bottom = bottom
        self.right = right
    }
    
    public init(value: CGFloat) {
        self.top = value
        self.left = value
        self.bottom = value
        self.right = value
    }
}
