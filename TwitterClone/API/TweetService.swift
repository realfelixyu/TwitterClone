//
//  TweetService.swift
//  TwitterClone
//
//  Created by Felix Yu on 9/24/20.
//  Copyright © 2020 Felix Yu. All rights reserved.
//

import Foundation
import Firebase

struct TweetService {
    static let shared = TweetService()
    
    func uploadTweet(caption: String, completion: @escaping(Error?, DatabaseReference) -> Void) {
        guard let uid = Auth.auth().currentUser?.uid else {return}
        
        let values = ["uid": uid, "timestamp": Int(NSDate().timeIntervalSince1970), "likes": 0, "retweets": 0, "caption": caption] as [String: Any]
        
        REF_TWEETS.childByAutoId().updateChildValues(values, withCompletionBlock: completion)
    }
    
    
    
}
