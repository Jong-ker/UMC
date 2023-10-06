//
//  LoginVIewControllerViewController.swift
//  Catstagram
//
//  Created by Jongkwon on 2023/10/05.
//

import UIKit

class LoginVIewControllerViewController: UIViewController {

    
    var email = String()
    var password = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func emailTextFieldEditingChange(_ sender: UITextField) {
        // 옵셔널
        // 값이 있을수도 없을수도
        let text = sender.text ?? ""
        self.email = text
        
        
    }
    
    @IBAction func passwordTextFieldEditingChanged(_ sender: UITextField) {
        let text = sender.text ?? ""
        self.password = text
    }
    @IBAction func loginButtonDidTap(_ sender: UIButton) {
    }
    @IBAction func registerButtonDidTap(_ sender: UIButton) {
        
        /// storyboard  생성
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        /// ViewController 생성
        let Registerviewcontroller = storyboard.instantiateViewController(withIdentifier: "RegisterVC")as! RegisterViewController
        /// 메소드를 이용해서 화면전환
        self.present(Registerviewcontroller, animated: true, completion:nil)
        
    }
}
