//
//  CacheManager.swift
//  AppYoutube
//
//  Created by Nadia Mettioui on 13/06/2020.
//  Copyright © 2020 Nadia Mettioui. All rights reserved.
//

import Foundation
import Foundation

class CacheManager {

    static var cache = [String:Data]()
    
    static func setVideoCache(_ url:String, _ data:Data?) {
        
        // Store the image data and use the url as the key
        cache[url] = data
        
    }
    
    static func getVideoCache(_ url:String) -> Data? {
        
        // Try to get the data for the specified url
        return cache[url]
    }
    
    
}
