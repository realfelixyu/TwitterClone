//
//  User.swift
//  TwitterClone
//
//  Created by Felix Yu on 9/22/20.
//  Copyright © 2020 Felix Yu. All rights reserved.
//

import Foundation

struct User {
    let username: String
    let email: String
    var profileImageUrl: URL?
    let uid: String
    
    init(uid: String, dictionary: [String: AnyObject]) {
        self.uid = uid
        self.username = dictionary["username"] as? String ?? ""
        self.email = dictionary["email"] as? String ?? ""
        if let profileImageUrlString = dictionary["profileImageUrl"] as? String ?? "" {
            guard let url = URL(string: profileImageUrlString) else {return}
            self.profileImageUrl = url
        }
    }
    
}
