//
//  NotificationViewModel.swift
//  TwitterClone
//
//  Created by Felix Yu on 10/10/20.
//  Copyright © 2020 Felix Yu. All rights reserved.
//

import Foundation
import UIKit

struct NotificationViewModel {
    
    private let notification: Notification
    private let type: NotificationType
    private let user: User
    
    var timestampString: String? {
        let formatter = DateComponentsFormatter()
        
        formatter.allowedUnits = [.second, .minute, .hour, .day, .weekOfMonth]
        formatter.maximumUnitCount = 1
        formatter.unitsStyle = .abbreviated
        
        let now = Date()
        return formatter.string(from: notification.timestamp, to: now) ?? "2m"
    }
    
    var notificationMessage: String {
        switch type {
        case .follow:
            return " started following you"
        case .like:
            return " liked one of your tweets"
        case .reply:
            return " replied to your tweet"
        case .retweet:
            return " retweeted your tweet"
        case .mention:
            return " mentioned you in a tweet"
        }
    }
    
    var notificationText: NSAttributedString? {
        guard let timestamp = timestampString else {return nil}
        let attributedText = NSMutableAttributedString(string: user.username, attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 12)])
        attributedText.append(NSAttributedString(string: notificationMessage, attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 12)]))
        attributedText.append(NSAttributedString(string: " \(timestamp)", attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 12), NSAttributedString.Key.foregroundColor: UIColor.lightGray]))
    
        return attributedText
    }
    
    var profileImageUrl: URL? {
        return user.profileImageUrl
    }
    
    var shouldHideFollowButton: Bool {
        return type != .follow
    }
    
    var followButtonText: String {
        return user.isFollowed ? "Follwing" : "Follow"
    }
    
    init(notification: Notification) {
        self.notification = notification
        self.user = notification.user
        self.type = notification.type
    }
}
