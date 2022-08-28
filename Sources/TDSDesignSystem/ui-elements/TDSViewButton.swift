//
//  TDSViewButton.swift
//  
//
//  Created by Carl Zeitler on 29.08.22.
//

import SwiftUI

public struct TDSViewButton<Content: View>: View {
    
    // MARK: - Properties
    
    public var content: Content
    public var styleStateSet: TDSStyleStateSet
    @Environment(\.isEnabled) private var isEnabled
    
    // MARK: - Body
    
    public var body: some View {
        content
            .buttonStyle(TDSViewButtonStyle(styleStateSet: styleStateSet,
                                            isEnabled: isEnabled))
    }
}


public struct TDSViewButtonStyle: ButtonStyle {
    
    // MARK: - Properties

    var styleStateSet: TDSStyleStateSet
    var isEnabled: Bool
    
    // MARK: - Body
    
    public func makeBody(configuration: Configuration) -> some View {
        configuration.label.styleView(styleStateSet,
                                      isEnabled: isEnabled,
                                      isHighlighted: configuration.isPressed)
    }
}
