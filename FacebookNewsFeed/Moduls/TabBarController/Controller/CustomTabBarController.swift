//
//  CustomTabBarController.swift
//  FacebookNewsFeed
//
//  Created by mac on 12/23/18.
//  Copyright © 2018 mac. All rights reserved.
//

import UIKit

class CustomTabBarController: UITabBarController {
    //  MARK: - Lyfe Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpTabBarController()
    }
    
    private func setUpTabBarController() {
        let feedController = FeedController(collectionViewLayout: UICollectionViewFlowLayout())
        feedController.navigationItem.title = Resource.TabBarTitle.newFeedTitle
        let navigationController1 = UINavigationController(rootViewController: feedController)
        navigationController1.title = Resource.TabBarTitle.newFeedTitle
        navigationController1.tabBarItem.image = Resource.Images.newsFeedIcon
        
        let requestController = RequestController()
        requestController.navigationItem.title = Resource.TabBarTitle.requestTitle
        let navigationController2 = UINavigationController(rootViewController: requestController)
        navigationController2.title = Resource.TabBarTitle.requestTitle
        navigationController2.tabBarItem.image = Resource.Images.requestIcon
        
        viewControllers = [navigationController1, navigationController2]
    }
}
