//
//  ViewController.swift
//  Home Work 2.4
//
//  Created by Anzhelika Pikulina on 29/05/2020.
//  Copyright © 2020 Anzhelika Pikulina. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userNameTextField.delegate = self
        passwordTextField.delegate = self
    }
    
    // Сообщение алерт контроллера по-поводу ввода имени пользователя
    @IBAction func ForgotNameButton() {
        
        showAlert(with: "Oops!", and: "Your name is \(user.login) 😉")
        userNameTextField.text = user.login
        return
    }
    
    // Сообщение алерт контроллера по-поводу ввода пароля
    @IBAction func ForgotPasswordButton() {
        showAlert(with: "Oops!", and: "Your password is \(user.password) 😉")
        passwordTextField.text = user.password
        return
    }
    
    @IBAction func LogInButton() {
        if userNameTextField.text != user.login && passwordTextField.text == user.password {
            showAlert(with: "Oops!", and: "Login is not correct! 🤔")
        } else if userNameTextField.text == user.login && passwordTextField.text != user.password {
            showAlert(with: "Oops!", and: "Password is not correct! 🤔")
        } else if userNameTextField.text != user.login && passwordTextField.text != user.password {
            showAlert(with: "Oops!", and: "Login and password are not correct! 🤔")
        }
        passwordTextField.text = ""
    }
    
    // Возврат на предыдущий экран по кнопке Log Out
    @IBAction func unwindSegue(segue: UIStoryboardSegue) {
        userNameTextField.text = ""
        passwordTextField.text = ""
    }
}

extension ViewController { // расширение для ViewController
    
    // MARK:  01 - UIAlertController
    private func showAlert(with title: String, and message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    
    /* MARK: 02 передача имени пользователя из текстового поля: userNameTextField
     в переменную: userName на другой экран: WelcomeViewController через TabBarController */
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let tabBarController = segue.destination as! UITabBarController
        let destinationVC = tabBarController.viewControllers?.first as!
        WelcomeViewController
        destinationVC.userName = userNameTextField.text!
    }
    
    // MARK: 03 скрытие клавиатуры при тапе по экрану
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        self.view.endEditing(true)
    }
    
    // MARK: 04 скрытие клавиатуры после набора пароля
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        passwordTextField.resignFirstResponder()
        return true
    }
}
