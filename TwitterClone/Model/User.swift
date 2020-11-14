//
//  User.swift
//  TwitterClone
//
//  Created by Felix Yu on 9/22/20.
//  Copyright © 2020 Felix Yu. All rights reserved.
//

import Foundation
import Firebase

struct User {
    var username: String
    let email: String
    var profileImageUrl: URL?
    let uid: String
    var isFollowed = false
    var stats: UserRelationStats?
    var bio: String
    
    var isCurrentUser: Bool {
        return Auth.auth().currentUser?.uid == uid
    }
    
    init(uid: String, dictionary: [String: AnyObject]) {
        self.uid = uid
        self.username = dictionary["username"] as? String ?? ""
        self.email = dictionary["email"] as? String ?? ""
        self.bio = dictionary["bio"] as? String ?? ""
        if let profileImageUrlString = dictionary["profileImageUrl"] as? String? ?? "" {
            guard let url = URL(string: profileImageUrlString) else {return}
            self.profileImageUrl = url
        }
    }
    
}

struct UserRelationStats {
    var followers: Int
    var following: Int
}
