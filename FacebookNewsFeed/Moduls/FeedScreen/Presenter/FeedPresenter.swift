//
//  FeedPresenter.swift
//  FacebookNewsFeed
//
//  Created by mac on 12/23/18.
//  Copyright © 2018 mac. All rights reserved.
//

import Foundation
import UIKit

protocol FeedPresenter {
    var numberOfItem: Int { get }
    var cellid: String { get }
    func register(collectionView: UICollectionView)
    func collectionView(collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell
}

class FeedPresenterIml: FeedPresenter {
    private let PostsArray = [Posts(name: "Mark Zuckerberg", profileImage: "zuckprofile", statusImage: "zuckdog"),
                              Posts(name: "Steve Jobs", profileImage: "steveprofile", statusImage: "stevestatus")]
    
    var numberOfItem: Int {
        return PostsArray.count
    }
    
    var cellid: String {
        return "cellid"
    }
    
    func register(collectionView: UICollectionView) {
        collectionView.register(FeedCell.self, forCellWithReuseIdentifier: cellid)
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellid, for: indexPath) as? FeedCell else {
            return UICollectionViewCell()
        }
        cell.post = PostsArray[indexPath.row]
        return cell
    }
}
