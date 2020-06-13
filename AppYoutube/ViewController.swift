//
//  ViewController.swift
//  AppYoutube
//
//  Created by Nadia Mettioui on 03/06/2020.
//  Copyright © 2020 Nadia Mettioui. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate,ModelDelegate {
   
    @IBOutlet weak var tableView: UITableView!
    
    
    var model = Model()
    var videos = [Video]() 
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // set itself as the delegate and datasourse
        tableView.delegate = self
        tableView.dataSource = self
        // set itse as the delegate  of the model
        model.delegate = self
        
       
        //fetchdata()
       
        //print(model.getVideos().self)
        let label = UILabel(frame: CGRect(x: 30, y: 100, width: 200, height: 21))
        label.textAlignment = NSTextAlignment.center
         self.view.addSubview(label)
        
        model.getVideos()
        
    }
    
    func videosFetched(_ videos: [Video]) {
           
               // set the Fetched videos to our property
               self.videos = videos
               tableView.reloadData()
          
       }
    
    // MARK: - Model Delegate Methods
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        videos.count
    }
    // pour chaque cell afficher  contenu de la cell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Constants.VIDEO_ID, for: indexPath)
        //configure the cell with the data
        
        let title = self.videos[indexPath.row].title
        cell.textLabel?.text = title
       // cell.t?.text = "okokoko"
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
}
    
    
//    func fetchdata(){
//
//        let url = URL(string: Constants.API_URL)
//       // print("my url  \(url!)")
//        let session = URLSession.shared
//        //print(session)
//        let dataTask = session.dataTask(with: url!) { (data, response,error) in
//            // check if there were any errors
//            if error != nil || data == nil {
//                return
//            }
//            do {
//                //Parsing the data into vido object
//               //print("hello22")
//                let decoder = JSONDecoder()
//                decoder.dateDecodingStrategy = .iso8601
//
//                let response = try decoder.decode(Response.self, from: data!)
//                print(response.items!)
//                self.videos = response.items!
//                print(self.videos.description)
//              //  print(self.videos.description)
//                //videos.append(response.items)
//                dump(response)
//               let dataSyring = data?.count
//              print(dataSyring)
//                // print(response.items as Any)
//
//
//            }
//            catch {
//
//
//
//
//            }
//
//        }
//        //kick off the task
//        dataTask.resume()
//    }
//
//
    

//if let route = try?  container.decode(CountryData.self) {
  //  countries.append(route)
//}
