//
//  TDSDesignSystem.swift
//  designsystem-ios
//
//  Created by Carl Zeitler on 29.06.22.
//

import Foundation

public class TDSDesignSystem {
    
    // MARK: - Properties
    
    public static let sharedInstance = TDSDesignSystem()
    
    private(set) var configuration: TDSDesignSystemConfig? {
        didSet {
            applyConfiguration()
        }
    }
    
    public var styles: Dictionary<String, TDSStyleStateSet>? {
        return configuration?.styles
    }
    
    // MARK: - Public API
    
    /**
     Needs to be called when the application is launched, initialises the framework
     Recommended: AppDelegate.didFinishLaunchingWithOptions
     */
    public func setup() {
        var configuration: TDSDesignSystemConfig?
        
        configuration = ResourceManager.sharedInstance.loadFromFile(TDSDesignSystemDefines.configFileName)
        if configuration == nil {
            configuration = ResourceManager.sharedInstance.loadFromFile(TDSDesignSystemDefines.configFileFallbackName)
        }
        
        self.configuration = configuration
    }
    
    /**
     Call this method before setup if there are additional modules which contain style files. This affects the order in which files/resources are being searched:
        1. Main Bundle of caller
        2. Inserted Bundles in reverse order of insertion (last insertion == highest priority)
        3. Framework Bundle
     */
    public func registerBundle(_ bundle: Bundle) {
        ResourceManager.sharedInstance.registerBundle(bundle)
    }
    
    // MARK: - Private API
    
    private init() {}
    
    private func applyConfiguration() {
        guard let config = self.configuration else {
            return
        }
        
        TDSStyleDefaults.setupWithStyle(config.defaultStyle)
    }
    
}
