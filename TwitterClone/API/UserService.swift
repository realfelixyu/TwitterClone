//
//  UserService.swift
//  TwitterClone
//
//  Created by Felix Yu on 9/22/20.
//  Copyright © 2020 Felix Yu. All rights reserved.
//

import Foundation
import Firebase
import UIKit

struct UserService {
    static let shared = UserService()
    
    func fetchUser(completion: @escaping(User) -> Void) {
        guard let uid = Auth.auth().currentUser?.uid else {return}
        REF_USERS.child(uid).observeSingleEvent(of: .value) { (snapshot) in
            guard let dictionary = snapshot.value as? [String: AnyObject] else {return}
            
//            guard let username = dictionary["username"] as? String else {return}
//            print(username)
            let user = User(uid: uid, dictionary: dictionary)
            completion(user)
//            print(user.email)
//            print(user.username)
//            print(user.profileImageUrl)
        }
    }
}
