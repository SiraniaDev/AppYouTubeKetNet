//
//  Constants.swift
//  AppYoutube
//
//  Created by Nadia Mettioui on 04/06/2020.
//  Copyright © 2020 Nadia Mettioui. All rights reserved.
//

import Foundation
struct Constants {
    static var API_KEY = "AIzaSyAjPSnqmTCaiQ8jsfZgGAqLgHqvBzJP7zs"
    static var PLAYLIST_ID =  "PLOCvxAd9U2cpKic04cNGqj0j-B3VLFOxI"//"PLMRqhzcHGw1aLoz4pM_Mg2TewmJcMg9ua"
    static var API_URL  = "https://www.googleapis.com/youtube/v3/playlistItems?part=snippet&playlistId=\(Constants.PLAYLIST_ID)&key=\(Constants.API_KEY)"
    static var  VIDEO_ID = "VideoCell"
    static var YT_EMBED_URL = "https://www.youtube.com/embed/"
}


