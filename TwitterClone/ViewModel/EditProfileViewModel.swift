//
//  EditProfileViewModel.swift
//  TwitterClone
//
//  Created by Felix Yu on 10/15/20.
//  Copyright © 2020 Felix Yu. All rights reserved.
//

import Foundation


enum EditProfileOptions: Int, CaseIterable {
    case username
    case bio
    
    var description: String {
        switch self {
        case .username: return "Username"
        case .bio: return "Bio"
        }
    }
}

struct EditProfileViewModel {
    
    private let user: User
    let option: EditProfileOptions
    
    var titleText: String {
        print(option.description)
        return option.description
    }
    
    var optionValue: String {
        switch option {
        case .username: return user.username
        case .bio: return user.bio
        }
    }
    
    var shouldHideTextView: Bool {
        return option != .bio
    }
    
    var shouldHideTextField: Bool {
        return option == .bio
    }
    
    var shouldHidePlaceHolderLabel: Bool {
        return user.bio != " "
    }
    
    init(user: User, option: EditProfileOptions) {
        self.user = user
        self.option = option
    }
}
