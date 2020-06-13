//
//  DetailsUIViewController.swift
//  AppYoutube
//
//  Created by Nadia Mettioui on 13/06/2020.
//  Copyright © 2020 Nadia Mettioui. All rights reserved.
//

import UIKit
import WebKit

class DetailsUIViewController: UIViewController {
     @IBOutlet weak var titleLabel: UILabel!
        
        @IBOutlet weak var dateLabel: UILabel!
        
        @IBOutlet weak var webView: WKWebView!
        
        @IBOutlet weak var textView: UITextView!
        
        var video:Video?
        
        override func viewDidLoad() {
            super.viewDidLoad()

            // Do any additional setup after loading the view.
        }
        
        override func viewWillAppear(_ animated: Bool) {
            
            // Clear the fields
            titleLabel.text = ""
            dateLabel.text = ""
            textView.text = ""
            
            // Check if there's a video
            guard video != nil else {
                return
            }
            
            // Create the embed URL
            let embedUrlString = Constants.YT_EMBED_URL + video!.videoId
            
            // Load it into the webview
            let url = URL(string: embedUrlString)
            let request = URLRequest(url: url!)
            webView.load(request)
            
            // Set the title
            titleLabel.text = video!.title
            
            // Set the date
            let df = DateFormatter()
            df.dateFormat = "EEEE, MMM d, yyyy"
            dateLabel.text = df.string(from: video!.published)
            
            // Set the description
            textView.text = video!.description
        }

    }
