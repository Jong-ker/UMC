//
//  ProfileViewController.swift
//  Profile
//
//  Created by Jongkwon on 11/15/23.
//

import UIKit

class ProfileViewController: UIViewController {
    // MARK: Properties
    @IBOutlet weak var profileCollectionView: UICollectionView! // CollectionView를 UI와 코드에 추가
    
    // MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupCollectionView() // setupCollectionView 라는 메소드를 viewDidLoad에서 호출하는것
    }
    // MARK: Actions
    
    
    // MARK: Helpers
    private func setupCollectionView(){ // CollectionView도 TableView와 동일하게 delegate로 연결해줘야한다. 이전에는 viewDidLoad에서 한번에 하였지만 이번에는 메소드를 이용하여 연결시켜준다.
        profileCollectionView.delegate = self
        profileCollectionView.dataSource = self
        
        profileCollectionView.register(
            UINib(nibName: "ProfileCollectionViewCell",
                bundle: nil),
            forCellWithReuseIdentifier: ProfileCollectionViewCell.identifier) // Cell 을 등록하는것.
    }
}
// MARK: - UIColletionvViewDelegate, UICollectionViewDataSource
extension ProfileViewController: UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ProfileCollectionViewCell.identifier, for: indexPath) as? ProfileCollectionViewCell else{
            // return UICollectionViewCell()
            // Cell을 생성하는것.
            fatalError("셀 타입 캐스팅 실패...")
            
        }
        // 프로토콜을 채택하는것. (오류가 뜰때 자동수정을 해주면 자동으로 채워진다), 버그를 없애기 위해서 code를 임의로 채워줘야한다. 이것까지 마치면 CollectionView는 완성.
        return cell
    }
}

extension ProfileViewController: UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: CGFloat(159)) // CollectionView의   Cell 사이즈를 결정하는것.
    }
}
