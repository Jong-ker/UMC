//
//  HomeViewController.swift
//  market
//
//  Created by Jongkwon on 10/15/23.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    let Name = ["[루이비통] 모노그램 넥클리스","요시다포터 챙커 투웨이 헬맷 백 블랙 (622-78332)","이건 오늘 안팔리면 안팔게요. 식빵? 드실분?","[벤츠 SLK 클래스 R171 SLK350( 270마력)] 06년식, 18,8km","뉴발란스 993 mr993gl","루이비통 남성 카드지갑 m62899 팝니다.","나이키 줌X 인빈서블 런 플라이니트2 270mm","[현대 더 뉴 싼타페 TM 5인승 (HEV 1.6T) 2WD 프레스티지] 22년식, 2.9만 km","FORTNUM & MASON (포트넘 앤 메이슨) 티세트","나이키 베이퍼맥스 EVO 블랙 270mm"]
    
    let Place = ["강서구 염창동 22분전","강서구 화곡제3동 끌올 7분전","영등포구 영등포본동 40초전","중고차 직거래","구로구 구로제5동 끌올 38분전","구로구 오류동 끌올 19분전","구로구 개봉동 11분전","중고차 직거래","금천구 가산동 끌올 20분 전","구로구 개봉동 14분 전"]
    
    let Price = ["670,000원","299,000원","10,000원","650만원","330,000원","520,000원","50,000원","렌트 62만원 / 월","50,000원","70,000원"]
    
    let images = ["1","2","3","4","5","6","7","8","9","10"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.separatorStyle = .none
        let feedNib = UINib(nibName: "FeedTableViewCell", bundle: nil)
        tableView.register(feedNib, forCellReuseIdentifier: "FeedTableViewCell")
        
        // Do any additional setup after loading the view.
    }

}

extension HomeViewController : UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "FeedTableViewCell", for: indexPath) as? FeedTableViewCell else{
            return UITableViewCell()
        }
        cell.labelName.text = Name[indexPath.row]
        cell.labelPlace.text = Place[indexPath.row]
        cell.labelPrice.text = Price[indexPath.row]
        cell.imageViewPicture.image = UIImage(named: images[indexPath.row])

        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    
}
