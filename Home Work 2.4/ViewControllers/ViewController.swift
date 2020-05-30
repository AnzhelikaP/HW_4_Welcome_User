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
    }
    
    // скрытие клавиатуры
        override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        self.view.endEditing(true)
    }
    
    // передача имени пользователя из текстового поля: userNameTextField
    // в переменную: userName на другой экран: WelcomeViewController
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowSegueWelcome" {
            let destinationVC: WelcomeViewController = segue.destination as! WelcomeViewController
            destinationVC.userName = userNameTextField.text!
            
        }
    }
    
    // Сообщение алерт контроллера
    @IBAction func ForgotNameButton() {
        showAlert(with: "Oops!", and: "Your name is Anzhelika 😉")
        userNameTextField.text = "Anzhelika"
        return
    }
    
    @IBAction func ForgotPasswordButton() {
        showAlert(with: "Oops!", and: "Your password is Password 😉")
        passwordTextField.text = "Password"
        return
    }
    
    @IBAction func LogInButton() {
        //touchesBegan(touches, with: event)
        //  userNameTextField.text = " "
        passwordTextField.text = " "
        
    }
    
    
    
}



extension ViewController { // расширение для ViewController
    
  // MARK: - UIAlertController
    private func showAlert(with title: String, and message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    


}
