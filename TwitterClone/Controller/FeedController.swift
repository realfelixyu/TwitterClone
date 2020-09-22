//
//  FeedController.swift
//  TwitterClone
//
//  Created by Felix Yu on 9/20/20.
//  Copyright © 2020 Felix Yu. All rights reserved.
//

import Foundation
import UIKit


class FeedController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    func configureUI() {
        view.backgroundColor = .systemBlue
        navigationItem.title = "Home"
        
        let imageView = UIImageView(image: UIImage(named: "twitter_logo_blue"))
        imageView.contentMode = .scaleAspectFit
        navigationItem.titleView = imageView
    }
}

