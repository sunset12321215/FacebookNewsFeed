//
//  FeedCell.swift
//  FacebookNewsFeed
//
//  Created by mac on 12/21/18.
//  Copyright © 2018 mac. All rights reserved.
//

import UIKit

class FeedCell: UICollectionViewCell {
    //  MARK: - Properties
    var post: Posts? {
        didSet {
            if let name = post?.name {
                let attributesSetting = [NSAttributedStringKey.font: UIFont.boldSystemFont(ofSize: 14)]
                let attriString = NSMutableAttributedString(string: name, attributes: attributesSetting)
                let attributesSetting2 = [NSAttributedStringKey.font: UIFont.systemFont(ofSize: 12),
                                          NSAttributedStringKey.foregroundColor: Theme.sharedInstance.grayTextColor]
                let attriString2 = NSMutableAttributedString(string: "\nDecember 18 San Francisco", attributes: attributesSetting2)
                attriString.append(attriString2)
                nameLabel.attributedText = attriString
            }
            
            if let profileImage = post?.profileImage {
                profileImageView.image = UIImage(named: profileImage)
                
            }

            if let statusImage = post?.statusImage {
                statusImageView.image = UIImage(named: statusImage)
            }
        }
    }
    
    //  MARK: - UI Element
    private let profileImageView: UIImageView = {
       let imageView = UIImageView()
        imageView.backgroundColor = #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)
        imageView.contentMode = .scaleAspectFit
        imageView.image = Resource.Images.zuck
        return imageView
    }()
    
    private let nameLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 2
        return label
    }()
    
    private let statusText: UILabel = {
        let label = UILabel()
        label.text = "Meanwhile, Beast turned to the dark side."
        label.font = .systemFont(ofSize: 12)
        return label
    }()
    
    private let statusImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = Resource.Images.zuckDog
        imageView.contentMode = .scaleToFill
        return imageView
    }()
    
    private let likeCommentLabel: UILabel = {
        let label = UILabel()
        label.text = "488 Likes 10.5K Comments"
        label.font = .systemFont(ofSize: 12)
        label.textColor = Theme.sharedInstance.grayTextColor
        return label
    }()
    
    private let likeButton: UIButton = {
        let button = UIButton()
        button.setTitle("Like", for: .normal)
        button.setImage(Resource.Images.like, for: .normal)
        button.setTitleColor(Theme.sharedInstance.grayTextColor, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 13)
        return button
    }()
    
    private let commentButton: UIButton = {
        let button = UIButton()
        button.setTitle("Comment", for: .normal)
        button.setImage(Resource.Images.comment, for: .normal)
        button.setTitleColor(Theme.sharedInstance.grayTextColor, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 13)
        return button
    }()
    
    private let shareButton: UIButton = {
        let button = UIButton()
        button.setTitle("Share", for: .normal)
        button.setImage(Resource.Images.share, for: .normal)
        button.setTitleColor(Theme.sharedInstance.grayTextColor, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 13)
        return button
    }()
    
    //  MARK: - Setup View
    private func setUpProfileImage() {
        addSubview(profileImageView)
        profileImageView.snp.makeConstraints { (make) in
            make.top.equalToSuperview().offset(10)
            make.height.width.equalTo(45)
            make.left.equalToSuperview().offset(10)
        }
    }
    
    private func setUpNameLabel() {
        addSubview(nameLabel)
        nameLabel.snp.makeConstraints { (make) in
            make.left.equalTo(profileImageView.snp.right).offset(10)
            make.centerY.equalTo(profileImageView)
            make.width.equalToSuperview()
        }
    }
    
    private func setUpStatusTextLabel() {
        addSubview(statusText)
        statusText.snp.makeConstraints { (make) in
            make.left.equalTo(profileImageView)
            make.top.equalTo(profileImageView.snp.bottom).offset(15)
        }
    }
    
    private func setUpStatusImageView() {
        addSubview(statusImageView)
        statusImageView.snp.makeConstraints { (make) in
            make.top.equalTo(statusText.snp.bottom).offset(10)
            make.width.equalToSuperview()
            make.height.equalTo(200)
        }
    }
    
    private func setUpLikeCommentLabel() {
        addSubview(likeCommentLabel)
        likeCommentLabel.snp.makeConstraints { (make) in
            make.top.equalTo(statusImageView.snp.bottom).offset(10)
            make.left.equalTo(statusText)
        }
    }
    
    private func setUpLikeButton() {
        addSubview(likeButton)
        likeButton.snp.makeConstraints { (make) in
            make.top.equalTo(likeCommentLabel.snp.bottom).offset(5)
            make.width.equalTo(self.frame.width/3)
            make.height.equalTo(20)
        }
    }
    
    private func setUpCommentButton() {
        addSubview(commentButton)
        commentButton.snp.makeConstraints { (make) in
            make.centerY.width.height.equalTo(likeButton)
            make.left.equalTo(likeButton.snp.right)
        }
    }
    
    private func setUpShareButton() {
        addSubview(shareButton)
        shareButton.snp.makeConstraints { (make) in
            make.centerY.width.height.equalTo(commentButton)
            make.left.equalTo(commentButton.snp.right)
        }
    }
     
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpView()
        setUpProfileImage()
        setUpNameLabel()
        setUpStatusTextLabel()
        setUpStatusImageView()
        setUpLikeCommentLabel()
        setUpLikeButton()
        setUpCommentButton()
        setUpShareButton()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setUpView() {
        backgroundColor = Theme.sharedInstance.whiteColor
    }
}
