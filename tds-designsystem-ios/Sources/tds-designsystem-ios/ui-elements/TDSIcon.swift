//
//  TDSIcon.swift
//  designsystem-ios
//
//  Created by Carl Zeitler on 06.07.22.
//

import SwiftUI

public struct TDSIcon: View {
    
    // MARK: - Properties
    
    @ObservedObject public var iconData: TDSIconData
    public var style: TDSStyle
    
    public var contentMode: ContentMode = .fit
    public var renderingMode: Image.TemplateRenderingMode = .template
    
    private var aspectRatio: CGFloat? {
        var retVal: CGFloat? = nil
        
        if let width = iconData.width,
           let height = iconData.height {
            retVal = width / height
        }
        
        return retVal
    }
    
    public var body: some View {
        iconData.image?
            .renderingMode(renderingMode)
            .resizable()
            .aspectRatio(aspectRatio,
                         contentMode: contentMode)
            .frame(width: iconData.width,
                   height: iconData.height)
            .styleView(style)
    }
}

struct TDSIcon_Previews: PreviewProvider {
    static var previews: some View {
        VStack(spacing: 10) {
            TDSIcon(iconData: TestValues.urlImageIconData,
                        style: TestValues.imageStyle,
                        renderingMode: .original)
            .padding()
            
            TDSIcon(iconData: TestValues.resourceImageIconData,
                        style: TestValues.imageStyle)
        }
    }
}
