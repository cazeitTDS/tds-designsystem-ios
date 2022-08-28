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
    public var action: () -> () = {}
    public var styleStateSet: TDSStyleStateSet
    @Environment(\.isEnabled) private var isEnabled
    
    // MARK: - Body
    
    public var body: some View {
        Button (action: {
            action()
        }, label: {
            content
        })
        .buttonStyle(TDSViewButtonStyle(styleStateSet: styleStateSet,
                                            isEnabled: isEnabled))
    }
    
    // MARK: - Public API
    
    public init(content: Content,
                action: @escaping () -> () = {},
                styleStateSet: TDSStyleStateSet) {
        self.content = content
        self.action = action
        self.styleStateSet = styleStateSet
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
