//
//  TDSButton.swift
//  designsystem-ios
//
//  Created by Carl Zeitler on 30.06.22.
//

import SwiftUI

public struct TDSButton: View {
    
    // MARK: - Properties
    
    var title: String
    var styleStateSet: TDSStyleStateSet
    
    var iconData: TDSIconData?
    var iconPosition: TDSIconPosition?
    var iconInsets: TDSEdgeInsets = TDSEdgeInsets(value: 0)
    
    var action: (() -> Void) = {}
    
    @Environment(\.isEnabled) private var isEnabled
    
    // MARK: - Body
    
    public var body: some View {
        let buttonStyle = TDSButtonStyle(title: title,
                                         styleStateSet: styleStateSet,
                                         iconData: iconData,
                                         iconPosition: iconPosition,
                                         iconInsets: iconInsets,
                                         isEnabled: isEnabled)
        
        Button("", action: action)
            .buttonStyle(buttonStyle)
    }
    
    // MARK: - Public API
    
    public init(title: String,
                styleStateSet: TDSStyleStateSet = TDSStyleStateSet(value: TDSStyle()),
                iconData: TDSIconData? = nil,
                iconPosition: TDSIconPosition? = nil,
                iconInsets: TDSEdgeInsets = TDSEdgeInsets(value: 0),
                action: (@escaping () -> Void) = {}) {
        self.title = title
        self.styleStateSet = styleStateSet
        self.iconData = iconData
        self.iconPosition = iconPosition
        self.iconInsets = iconInsets
        self.action = action
    }
}

fileprivate struct TDSButtonStyle: ButtonStyle {
    
    // MARK: - Properties
    
    var title: String
    var styleStateSet: TDSStyleStateSet
    
    var iconData: TDSIconData?
    var iconPosition: TDSIconPosition?
    var iconInsets: TDSEdgeInsets
    
    var isEnabled: Bool
    
    // MARK: - Body
    
    fileprivate func makeBody(configuration: Configuration) -> some View {
        HStack(spacing: 0) {
            iconViewForPosition(iconPosition: .left)
            
            Text(title)
                .styleText(styleStateSet,
                           isEnabled: isEnabled,
                           isHighlighted: configuration.isPressed)
            
            iconViewForPosition(iconPosition: .right)
        }.styleView(styleStateSet, isEnabled: isEnabled,
                    isHighlighted: configuration.isPressed)
    }
    
    // MARK: - Public API
    
    init(title: String,
         styleStateSet: TDSStyleStateSet,
         iconData: TDSIconData?,
         iconPosition: TDSIconPosition?,
         iconInsets: TDSEdgeInsets,
         isEnabled: Bool) {
        self.title = title
        self.styleStateSet = styleStateSet
        self.iconData = iconData
        
        self.iconInsets = iconInsets
        self.iconPosition = iconPosition
        self.isEnabled = isEnabled
    }
    
    // MARK: - Private API
    
    @ViewBuilder
    private func iconViewForPosition(iconPosition: TDSIconPosition) -> some View {
        if iconPosition == self.iconPosition {
            iconData?.image?
                .renderingMode(.template)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: iconData?.width,
                       height: iconData?.height)
                .padding(self.iconInsets.edgeInsets)
        }
    }
}

struct TDSButton_Previews: PreviewProvider {
    static var previews: some View {
        TDSDesignSystem.sharedInstance.setup()
        return VStack(spacing: 10) {
            TDSButton(title: "Enabled with truncating tail enabled",
                          styleStateSet: TestValues.buttonStyleSet,
                          iconData: TestValues.resourceImageIconData,
                          iconPosition: .left,
                          iconInsets: TDSEdgeInsets(top: 0,
                                                    left: 0,
                                                    bottom: 0,
                                                    right: 10))
            
            TDSButton(title: "Disabled",
                          styleStateSet: TestValues.buttonStyleSet)
            .disabled(true)
        }
    }
}
