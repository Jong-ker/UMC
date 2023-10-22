//
//  RegisterViewController.swift
//  Catstagram
//
//  Created by Jongkwon on 2023/10/05.
//

import UIKit

class RegisterViewController: UIViewController {
    var isvValidEmail = false
    var isValidName = false
    var isValidNickname = false
    var isValidPassword = false
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var nicknameTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var signupButton: UIButton!
    
    
    var textFields: [UITextField] {
        [emailTextField, nameTextField, nicknameTextField, passwordTextField]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @objc
    func textFieldEditingChanged(_ sender: UITextField){
        let text = sender.text ?? ""
        
        switch sender {
        case emailTextField:
            print("email")
        case nameTextField:
            print("name")
        case nicknameTextField:
            print("nickname")
        case passwordTextField:
            print("password")
        default:
            fatalError("Missing TextField...")
        }
        
    }
    
    private func setupTextField(){
        
        textFields.forEach { tf in
            tf.addTarget(self, action: #selector(textFieldEditingChanged(_:)), for: .editingChanged)
        }
    }
    
    /*private func validateUserInfo() {
        if isValidEmail
            && isValidName
            && isValidNickname
            && isValidPassword {
            
            self.signupButton.backgroundColor = UIColor.blue
        } else {
            
            self.signupButton.backgroundColor = .blue
        } */
    }
    extension String {
        
        func isValidPassword() -> Bool {
            let regularExpression = "^(?=.*[A-Z])(?=.*[a-z])(?=.*[\\d])(?=.*[~!@#\\$%\\^&\\*])[\\w~!@#\\$%\\^&\\*]{8,}$"
            let passwordValidation = NSPredicate.init(format: "SELF MATCHES %@", regularExpression)
            
            return passwordValidation.evaluate(with: self)
        }
        
        func isValidEmail() -> Bool {
            let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
            let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
            return emailTest.evaluate(with: self)
        }
    }
