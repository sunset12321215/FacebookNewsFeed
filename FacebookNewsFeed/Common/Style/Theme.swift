//
//  Theme.swift
//  HealthCareViewer
//
//  Created by MACOS on 10/19/18.
//  Copyright © 2018 MACOS. All rights reserved.
//

import UIKit

public class Theme {
    class var sharedInstance : Theme {
        struct Static {
            static let instance : Theme = Theme()
        }
        return Static.instance
    }
    
    private init() {}
    
    //MARK: - Navigation Bar
    public var barTintColor: UIColor {
        return #colorLiteral(red: 0.3101216555, green: 0.4429278374, blue: 0.6251257062, alpha: 1)
    }
    
    var whiteColor: UIColor {
        return #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
    
    var grayColor: UIColor {
        return #colorLiteral(red: 0.9411764706, green: 0.9411764706, blue: 0.9411764706, alpha: 1)
    }
    
    var grayTextColor: UIColor {
        return #colorLiteral(red: 0.6078431373, green: 0.631372549, blue: 0.6705882353, alpha: 1)
    }
}
