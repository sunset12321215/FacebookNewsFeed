//
//  Posts.swift
//  FacebookNewsFeed
//
//  Created by mac on 12/23/18.
//  Copyright © 2018 mac. All rights reserved.
//

import Foundation

struct Posts {
    var name: String?
    var profileImage: String
    var statusImage: String
    
    init(name: String, profileImage: String, statusImage: String) {
        self.name = name
        self.profileImage = profileImage
        self.statusImage = statusImage
    }
}
