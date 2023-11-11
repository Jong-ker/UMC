//
//  SecondViewController.swift
//  BaeminData
//
//  Created by Jongkwon on 11/8/23.
//

import UIKit

class SecondViewController: UIViewController, ChangeLabelDelegate {
    func doChange() {
        previousViewController?.MoneyLabel.text = self.CostLabel.text
    }
    // protocol의 기능을 SecondViewController이 위임을 받는다. 따라서 UIViewController 뒤에 ChangeLabelDelegate을 작성해준다. 이때 오류가 뜨면 오류를 수정해줌으로써 그 기능이 무엇인지 정의를 해준다.
    // previousViewController에 있는 Label에 있는 텍스트를 자기 자신의 Label의 텍스트로 바꿔주는것이다.
    //카멜케이스, 파스칼케이스, 스네이크케이스 -> 변수 이름 짓는 방법 (스네이크 케이스는 잘 사용하지 않는다.)
    
    var previousViewController : ViewController? // 전에 있던 화면이 어떤것인지 알기 위해서 ViewController로 정의를 해준다.

    @IBOutlet weak var CostLabel: UILabel!
    
    @IBAction func buttonDismiss(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    // 뒤로가기 버튼을 누를때 첫번째 ViewController로 이동한다.
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        previousViewController?.delegate = self // delegate를 위임 받았다는것을 정의해줘야 한다. 따라서 이것을 작성.
    }
    
}
