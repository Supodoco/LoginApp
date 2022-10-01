//
//  ViewController.swift
//  LoginApp
//
//  Created by Supodoco on 30.09.2022.
//

import UIKit

class LoginViewController: UIViewController {
    
    // MARK: - IB Outlets
    @IBOutlet var usernameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    // MARK: - Private Properties
    private let username = "User"
    private let password = "123456"
   
    // MARK: - Override Methods
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.welcomeString = "Welcome, \(usernameTF.text ?? "Anonymous")!"
    }

    // MARK: - IB Actions
    @IBAction func forgotUsernameButtonAction() {
        showAlert(title: "Oops!", message: "Your username is \(username) 😉")
    }
    @IBAction func forgotPasswordButtonAction() {
        showAlert(title: "Oops!", message: "Your password is \(password) 😉")
    }
    @IBAction func loginButtonAction() {
        if (usernameTF.text, passwordTF.text) != (username, password) {
            showAlert(
                title: "Invalid login or password",
                message: "Please, enter correct login and password"
            ) {
                self.passwordTF.text = ""
            }
        }
    }
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        usernameTF.text = ""
        passwordTF.text = ""
    }
    
    // MARK: - Private Methods
    private func showAlert(title: String, message: String, dismissAction: (()->())? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let alertAction = UIAlertAction(title: "OK", style: .default) { _ in
            dismissAction?()
        }
        alert.addAction(alertAction)
        present(alert, animated: true)
    }
    
}

