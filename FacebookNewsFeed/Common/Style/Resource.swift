//
//  Resource.swift
//  HealthCareViewer
//
//  Created by MACOS on 10/19/18.
//  Copyright © 2018 MACOS. All rights reserved.
//

import UIKit

public class Resource {
    class var sharedInstance : Resource {
        struct Static {
            static let instance : Resource = Resource()
        }
        return Static.instance
    }
    
    public struct Images {
        public static var zuck: UIImage? = UIImage(named: "zuckprofile")
        public static var zuckDog: UIImage? = UIImage(named: "zuckdog")
        public static var like: UIImage? = UIImage(named: "like")
        public static var comment: UIImage? = UIImage(named: "comment")
        public static var share: UIImage? = UIImage(named: "share")
        public static var newsFeedIcon: UIImage? = UIImage(named: "newsfeedicon")
        public static var requestIcon: UIImage? = UIImage(named: "requestsicon")
    }
    
    public struct TabBarTitle {
        public static var newFeedTitle = "News Feed"
        public static var requestTitle = "Request"
    }
}
