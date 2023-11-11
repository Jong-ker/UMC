


import UIKit

protocol ChangeLabelDelegate {
    func doChange()
}
// protocol을 정의 해주는것이다.

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var MoneyLabel: UILabel!
    
    @IBAction func buttonGoNextVC(_ sender: Any) {
        guard let nextVC = storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController else {
            return
        }
        // guard를 사용한다. nextVC에 두번쨰 도착지인 SecondViewController를 정의해준다. guard는 if와 유사하다.
        // 같은 스토리보드에서 SecondViewController의 ID를 가진 ViewController로 이동한다.
        
        nextVC.previousViewController = self // previousViewController : 전에 있던 화면이 자신이라는 것이다.
        nextVC.modalPresentationStyle = .fullScreen // 다음 화면이 fullScreen 형태로 보여지는 형태
        present(nextVC, animated:true, completion:nil) // 화면 전환이 present 형태로 이루어진다, present는 다양한 화면전환 방법 중 하나이다.
    }
        
    var delegate : ChangeLabelDelegate? // delegate의 기능이다. protocol을 정의해주는것.
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

}

