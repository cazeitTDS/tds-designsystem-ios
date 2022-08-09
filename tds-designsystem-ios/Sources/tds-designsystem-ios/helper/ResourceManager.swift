//
//  ResourceManager.swift
//  designsystem-ios
//
//  Created by Carl Zeitler on 29.06.22.
//

import Foundation
import SwiftUI

class ResourceManager {
    
    // MARK: - Properties
    
    static let sharedInstance = ResourceManager()
    
    private static var fileType: String {
        return "json"
    }
    
    private lazy var decoder: JSONDecoder = {
        let decoder = JSONDecoder()
        
        return decoder
    }()
    
    private var bundles: [Bundle] = [TDSDesignSystemDefines.mainBundle, TDSDesignSystemDefines.bundle]
    
    // MARK: - Public API
    
    /**
     Add a bundle as search path for the files.
     The search order will always be:
        1. Main Bundle of caller
        2. Inserted Bundles in reverse order of insertion (last insertion == highest priority)
        3. Framework Bundle
     
     */
    func registerBundle(_ bundle: Bundle) {
        let mainBundleIndex = bundles.firstIndex(of: TDSDesignSystemDefines.mainBundle) ?? -1

        bundles.insert(bundle, at: mainBundleIndex + 1)
    }
    
    public func loadFromFile<T: Decodable>(_ name: String) -> T? {
        var retVal: T? = nil
        
        guard let data = contentsOfFile(name)?.data(using: .utf8) else {
            return nil
        }
        
        do {
            retVal = try decoder.decode(T.self, from: data)
        }
        catch let error {
            TDLogError("Unable to parse style for \"\(name)\" with error: \(error)")
        }
        
        return retVal
    }
    
    public func image(_ name: String) -> Image? {
        for currBundle in self.bundles {
            if let uiImage = UIImage(named: name, in: currBundle, compatibleWith: nil) {
                return Image(uiImage: uiImage)
            }
        }
        
        return nil
    }
    
    // MARK: - Private API
    
    private init() {}
    
    private func contentsOfFile(_ name: String,
                               forType type: String = ResourceManager.fileType) -> String? {
        var retVal: String? = nil
        
        for currBundle in self.bundles {
            let content: String? = contentsOfFile(name, forType: type, fromBundle: currBundle)
            if content != nil {
                retVal = content
                break
            }
        }
        
        return retVal
    }
    
    private func contentsOfFile(_ name: String,
                               forType type: String,
                               fromBundle bundle: Bundle) -> String? {
        var retVal: String? = nil
        
        guard let filepath = bundle.path(forResource: name, ofType: type) else {
            return retVal
        }
        
        retVal = try? String(contentsOfFile: filepath)
        return retVal
    }
}
