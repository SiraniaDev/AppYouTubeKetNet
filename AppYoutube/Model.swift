//
//  Model.swift
//  AppYoutube
//
//  Created by Nadia Mettioui on 04/06/2020.
//  Copyright © 2020 Nadia Mettioui. All rights reserved.
//

import Foundation
class Model {
    func getVideos(){
        // create a URL object
        let url = URL(string: Constants.API_URL)
        // prevoir si nill
        guard url != nil else {
            return
        }
        //Get a URLSession object
        let session = URLSession.shared
        
        //Get a data task from URLSESSIOn Objecct
        let dataTask = session.dataTask(with: url!) { (data, response,error) in
            // check if there were any errors
            if error != nil || data == nil {
                return
            }
            do {
                //Parsing the data into vido object
                
                let decoder = JSONDecoder()
                decoder.dateDecodingStrategy = .iso8601
                    let response = try decoder.decode(Response.self, from: data!)
                dump(response)
            }
            catch {
                
            
                
            
        }
           
            }
        //kick off the task
        dataTask.resume()
    }
}
