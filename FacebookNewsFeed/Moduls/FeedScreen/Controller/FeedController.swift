//
//  ViewController.swift
//  FacebookNewsFeed
//
//  Created by mac on 12/21/18.
//  Copyright © 2018 mac. All rights reserved.
//

import UIKit

class FeedController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    var feedPresenter: FeedPresenter!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        feedPresenter = FeedPresenterIml()
        setUpCollectionView()
        feedPresenter.register(collectionView: collectionView ?? UICollectionView())
    }
    
    private func setUpCollectionView() {
        collectionView?.backgroundColor = Theme.sharedInstance.grayColor
        collectionView?.alwaysBounceVertical = true
    }
}

extension FeedController {
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return feedPresenter.numberOfItem
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        return feedPresenter.collectionView(collectionView: collectionView, cellForItemAt: indexPath)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: 350)
    }
}
