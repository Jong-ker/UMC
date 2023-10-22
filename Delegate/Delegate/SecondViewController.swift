//
//  SecondViewController.swift
//  Delegate
//
//  Created by Jongkwon on 10/22/23.
//

import UIKit

class SecondViewController: UIViewController, ChangeLabelDelegate {
    func doChange() {
        previousViewController?.label.text = self.textField.text
    }
    
    @IBOutlet weak var textField: UITextField!
    var previousViewController : ViewController?
    
    @IBAction func buttonDismiss(_ sender: Any) {
        doChange()
        dismiss(animated: true, completion: nil)
        

        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}
