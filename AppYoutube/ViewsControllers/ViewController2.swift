//
//  ViewController2.swift
//  AppYoutube
//
//  Created by Nadia Mettioui on 21/06/2020.
//  Copyright © 2020 Nadia Mettioui. All rights reserved.
//

import UIKit

class ViewController2: UIViewController,UITableViewDataSource,UITableViewDelegate,ModelDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    
    var model = Model()
    var videos = [Video]()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Sets the navigation title with text and image
       
//        let image : UIImage = UIImage(named: "ketnet")!
//           let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 25, height: 25))
//           imageView.contentMode = .scaleAspectFit
//           imageView.image = image
//           navigationItem.titleView = imageView
//        imageView.contentMode = .scaleAspectFit
        // set itself as the delegate and datasourse
        tableView.delegate = self
        tableView.dataSource = self
        // set itse as the delegate  of the model
        model.delegate = self
        // Create MenuBAr
       //setupMenuBar()
        
        //fetchdata()
        
        //print(model.getVideos().self)
        let label = UILabel(frame: CGRect(x: 30, y: 100, width: 200, height: 21))
        label.textAlignment = NSTextAlignment.center
        self.view.addSubview(label)
        
        model.getVideos2()
        
    }
   
    
  
    
    func videosFetched(_ videos: [Video]) {
        
        // set the Fetched videos to our property
        self.videos = videos
        tableView.reloadData()
        
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        videos.count
    }
    // pour chaque cell afficher  contenu de la cell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Constants.VIDEO_ID, for: indexPath) as? VideoTableViewCell
        //configure the cell with the data
        
        //let title = self.videos[indexPath.row].title
        // cell.textLabel?.text = title
        let video = self.videos[indexPath.row]
        cell?.setCell(video)
        // cell.t?.text = "okokoko"
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        // Confirm that a video was selected
        guard tableView.indexPathForSelectedRow != nil else {
            return
        }
        
        // Get a reference to the video that was tapped on
        let selectedVideo = videos[tableView.indexPathForSelectedRow!.row]
        
        // Get a reference to the detail view controller
        let detailVC = segue.destination as! DetailsUIViewController
        
        // Set the video property of the detail view controller
        detailVC.video = selectedVideo
    }
}
