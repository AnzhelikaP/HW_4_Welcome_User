//
//  ViewController.swift
//  Home Work 2.4
//
//  Created by Anzhelika Pikulina on 29/05/2020.
//  Copyright © 2020 Anzhelika Pikulina. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func ForgotNameButton() {
        showAlert(with: "", and: "Oops! \n Your name is User 😉")
        return
        
    }
    
    @IBAction func ForgotPasswordButton() {
        showAlert(with: "", and: "Oops! \n Your password is Password 😉")
        return
        
    }
    
}


// MARK: - UIAlertController
extension ViewController {
    private func showAlert(with title: String, and message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            self.userNameTextField.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
