//
//  Videos.swift
//  AppYoutube
//
//  Created by Nadia Mettioui on 04/06/2020.
//  Copyright © 2020 Nadia Mettioui. All rights reserved.
//

import Foundation

struct Video : Decodable{
     
    var videoID = ""
    var title = ""
    var description = ""
    var thumbnail = ""
    var published = Date ()
    
    enum CodingKeys : String, CodingKey {
        case snippet
        case thumbnails
        case resourceId
        case high
        case published = "publishedAt"
        case title
        case description
        case thumbnail = "url"
        case videoID
        
        
    }
    
    init(from decoder: Decoder) throws {
       var videos : [Video]
        let container = try  decoder.container(keyedBy: CodingKeys.self)
        let snippetContainer  = try container.nestedContainer(keyedBy: CodingKeys.self, forKey: .snippet)
        // Parse Title
         self.title = try  snippetContainer.decode(String.self, forKey: .title)
      //  print("1/My title from ApiYT====>>>>>>   \(title)")
      //  print("*************************************************************************")
       
      // print(snippetContainer.allKeys)
        
        // Parse Descrip
        
        self.description = try snippetContainer.decode(String.self,forKey: .description)
       
      //  print("2/My description from ApiYT====>>>>>>    \(description)")
        // print("*************************************************************************")
        //parse Published
        self.published = try snippetContainer.decode(Date.self,forKey: .published)
       // print("3/published @@@@   \(published)")
        //print("*************************************************************************")
        // parse thumbnails
       
        let thumbnailsContainer = try snippetContainer.nestedContainer(keyedBy: CodingKeys.self, forKey: .thumbnails)
        let highContainer = try thumbnailsContainer.nestedContainer(keyedBy: CodingKeys.self, forKey: .high)
        self.thumbnail =  try highContainer.decode(String.self, forKey: .thumbnail)
       //  print("4/thumbnail    ====>>>>>>   \(thumbnail)")
           //    print("*************************************************************************")
        // parse VideoID
        let ressourceIDContainer = try snippetContainer.nestedContainer(keyedBy: CodingKeys.self, forKey: .resourceId)
        self.videoID =  try ressourceIDContainer.decode(String.self, forKey: .videoID)
      //  print("5/ Id Video    ====>>>>>>   \(videoID)")
               //       print("**************************Fin Print**********************************")
      
    }
    
}
