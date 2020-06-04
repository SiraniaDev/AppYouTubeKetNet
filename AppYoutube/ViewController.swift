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

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let button = UIButton()
        button.backgroundColor = .yellow
        model.getVideos()
        
    }


}

