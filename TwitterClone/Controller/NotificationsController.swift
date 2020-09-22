//
//  NotificationsController.swift
//  TwitterClone
//
//  Created by Felix Yu on 9/20/20.
//  Copyright © 2020 Felix Yu. All rights reserved.
//

import Foundation
import UIKit

class NotificationsController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        configureUI()
    }
    
    func configureUI() {
        view.backgroundColor = .systemBlue
        navigationItem.title = "Notifications"
    }

}
