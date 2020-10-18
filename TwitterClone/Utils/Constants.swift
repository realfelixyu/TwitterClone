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
//contains each user's id and their branches are their tweet IDs
let REF_USER_TWEETS = DB_REF.child("user-tweets")

let REF_USER_FOLLOWERS = DB_REF.child("user-followers")
let REF_USER_FOLLOWINGS = DB_REF.child("user-followings")

let REF_TWEET_REPLIES = DB_REF.child("tweet-replies")

let REF_USER_LIKES = DB_REF.child("user-likes")
let REF_TWEET_LIKES = DB_REF.child("tweet-likes")

let REF_NOTIFICATIONS = DB_REF.child("notifications")

let REF_USER_REPLIES = DB_REF.child("user-replies")

let REF_USER_USERNAMES = DB_REF.child("user-usernames")
