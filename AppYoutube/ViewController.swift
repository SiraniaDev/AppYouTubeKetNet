//
//  ViewController.swift
//  AppYoutube
//
//  Created by Nadia Mettioui on 03/06/2020.
//  Copyright © 2020 Nadia Mettioui. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var model = Model()
    var videos = [Video]() 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("hello")
        fetchdata()
        //print(model.getVideos().self)
        let label = UILabel(frame: CGRect(x: 30, y: 100, width: 200, height: 21))
        label.textAlignment = NSTextAlignment.center
        
        //label.text = model.getVideos().self//"I'm a test label"
        self.view.addSubview(label)
        //label.text = video.description
        
        //print(videos.count)
       // let myData = model.getVideos()
        
        // print("myData ..... \(myData)")
        
    }
    
    
    
    
    func fetchdata(){
        print("hello2")
        let url = URL(string: Constants.API_URL)
        print(url!)
        let session = URLSession.shared
        print(session)
        let dataTask = session.dataTask(with: url!) { (data, response,error) in
            // check if there were any errors
            if error != nil || data == nil {
                return
            }
            do {
                //Parsing the data into vido object
               
                let decoder = JSONDecoder()
                decoder.dateDecodingStrategy = .iso8601
                print(data!.count)
                let response = try decoder.decode(Response.self, from: data!)
                self.videos = response.items!
                print(self.videos.description)
                //videos.append(response.items)
                dump(response)
             //   let dataSyring = data?.count
              //print(dataSyring)
                // print(response.items as Any)
                
                
            }
            catch {
                
                
                
                
            }
            
        }
        //kick off the task
        dataTask.resume()
    }
    
    
    
}

//if let route = try?  container.decode(CountryData.self) {
  //  countries.append(route)
//}
