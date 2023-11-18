//
//  ProfileCollectionViewCell.swift
//  Profile
//
//  Created by Jongkwon on 11/18/23.
//

import UIKit

class ProfileCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "ProfileCollectionViewCell" // static은 정적 변수, CollectionView를 이루는 Cell 이라는것을 알리는것. 이후 identifier 에 ProfileCollectionViewCell을 입력해준다.
    
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var addProfileImageView: UIImageView!
    @IBOutlet weak var editButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupAttribute()
    }

    private func setupAttribute() {
        profileImageView.layer.cornerRadius = 88 / 2
        addProfileImageView.layer.cornerRadius = 24 / 2
        
        editButton.layer.borderColor =
        UIColor.black.cgColor
        editButton.layer.borderWidth = 1
    }
    
}
