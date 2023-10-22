//
//  StoryCollectionViewCell.swift
//  Catstagram
//
//  Created by Jongkwon on 10/22/23.
//

import UIKit

class StoryCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var viewImageViewBackground: UIView!
    
    @IBOutlet weak var viewUserProfileBackground: UIView!
    
    @IBOutlet weak var imageViewUserProfile: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        viewImageViewBackground.layer.cornerRadius = 15
        viewUserProfileBackground.layer.cornerRadius = 15
        imageViewUserProfile.layer.cornerRadius = 15
        imageViewUserProfile .clipsToBounds = true
    }

}
