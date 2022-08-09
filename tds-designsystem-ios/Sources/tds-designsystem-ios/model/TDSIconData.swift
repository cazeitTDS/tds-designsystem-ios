//
//  TDSIconData.swift
//  designsystem-ios
//
//  Created by Carl Zeitler on 30.06.22.
//

import SwiftUI
import Combine

public class TDSIconData: Codable, ObservableObject {
    
    // MARK: - Types
    
    enum CodingKeys: String, CodingKey {
        case width
        case height
        
        case resourceId = "resource-id"
        case urlString = "url"
    }
    
    // MARK: - Properties
    
    public var width: CGFloat?
    public var height: CGFloat?
    
    public private(set) var resourceId: String? {
        didSet {
            loadImage()
        }
    }

    public private(set) var urlString: String? {
        didSet {
            loadImage()
        }
    }
    
    @Published public private(set) var image: Image?
    
    // MARK: - Public API
    
    public convenience init(resourceId: String,
                            width: CGFloat? = nil,
                            height: CGFloat? = nil) {
        self.init(internalResourceId: resourceId,
                  width: width,
                  height: height)
    }
    
    public convenience init(url: String,
                width: CGFloat? = nil,
                height: CGFloat? = nil) {
        self.init(internalUrlString: url,
                  width: width,
                  height: height)
    }
    
    // MARK: - Private API
    
    private init(internalResourceId: String? = nil,
                 internalUrlString: String? = nil,
                 width: CGFloat? = nil,
                 height: CGFloat? = nil) {
        self.resourceId = internalResourceId
        self.urlString = internalUrlString
        
        self.width = width
        self.height = height
        
        loadImage()
    }
    
    private func loadImage() {
        if let resourceIdNotNil = self.resourceId {
            self.loadImageFromResourceId(resourceIdNotNil)
        }
        else if let urlStringNotNil = self.urlString {
            self.loadImageFromUrl(urlStringNotNil)
        }
    }
    
    private func loadImageFromResourceId(_ resourceId: String) {
        self.image = ResourceManager.sharedInstance.image(resourceId)
    }
    
    private func loadImageFromUrl(_ urlString: String) {
        guard let url = URL(string: urlString) else {
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data else {
                TDLogError("Error while requesting image from url \(urlString)")
                return
            }
            
            guard let uiImage = UIImage(data: data) else {
                TDLogError("Error casting image from loaded content for url \(urlString)")
                return
            }
            
            DispatchQueue.main.async {
                self.image = Image(uiImage: uiImage)
            }
        }
        task.resume()
    }
}
