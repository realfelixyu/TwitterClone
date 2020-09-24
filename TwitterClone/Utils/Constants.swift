//
//  Constants.swift
//  TwitterClone
//
//  Created by Felix Yu on 9/22/20.
//  Copyright © 2020 Felix Yu. All rights reserved.
//

import Foundation
import Firebase

let STORAGE_REF = Storage.storage().reference()
let STORAGE_PROFILE_IMAGES = STORAGE_REF.child("profile_images")

let DB_REF = Database.database().reference()
let REF_USERS = DB_REF.child("users")

let REF_TWEETS = DB_REF.child("tweets")
