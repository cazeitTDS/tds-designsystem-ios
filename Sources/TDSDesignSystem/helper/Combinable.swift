//
//  File.swift
//  
//
//  Created by Carl Zeitler on 31.08.22.
//

import Foundation
import SwiftUI

protocol Combinable {
    func combine(with other: Self?) -> Self
    
    func combine(foregroundColor: TDSColor?,
                 backgroundColor: TDSColor?,
                 cornerRadius: CGFloat?,
                 padding: TDSEdgeInsets?,
                 margin: TDSEdgeInsets?,
                 border: TDSBorderData?,
                 tdsFont: TDSFontData?,
                 textAlignment: TDSTextAlignment?,
                 maxTextLines: Int?,
                 shadow: TDSShadow?) -> Self
}
