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
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        self.view.endEditing(true)
    }
    
    @IBAction func ForgotNameButton() {
        showAlert(with: "Oops!", and: "Your name is User 😉")
        userNameTextField.text = "User"
        return
    }
    
    @IBAction func ForgotPasswordButton() {
        showAlert(with: "Oops!", and: "Your password is Password 😉")
        passwordTextField.text = "Password"
        return
    }
    
    @IBAction func LogInButton() {
        //touchesBegan(touches, with: event)
    }
}


// MARK: - UIAlertController
extension ViewController {
    private func showAlert(with title: String, and message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
