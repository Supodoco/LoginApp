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
    @IBOutlet var logInButton: UIButton!
    
    let user = User.getUserInfo()
    
    // MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        logInButton.layer.cornerRadius = 4
        usernameTF.text = user.username
        passwordTF.text = user.password
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabbar = segue.destination as? UITabBarController else { return }
        tabbar.children.forEach {
            if let controller = $0 as? WelcomeViewController {
                controller.person = user.person
            } else if let navigationVC = $0 as? UINavigationController {
                let controller = navigationVC.topViewController
                
                if let userInfoVC = controller as? UserInfoViewController  {
                    userInfoVC.person = user.person
                } else if let companiesVC = controller as? CompaniesViewController {
                    companiesVC.person = user.person
                }
            }
        }
    }

    // MARK: - IB Actions
    @IBAction func reminderButtons(_ sender: UIButton) {
        sender.tag == 0
        ? showAlert(title: "Oops!", message: "Your username is \(user.username) 😉")
        : showAlert(title: "Oops!", message: "Your password is \(user.password) 😉")
    }
    
    
    @IBAction func loginButtonAction() {
        if (usernameTF.text, passwordTF.text) != (user.username, user.password) {
            showAlert(
                title: "Invalid login or password",
                message: "Please, enter correct login and password",
                textField: passwordTF
            )
        }
    }
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        usernameTF.text = ""
        passwordTF.text = ""
    }
}

extension UIViewController {
    func showAlert(title: String, message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let alertAction = UIAlertAction(title: "OK", style: .default) { _ in
            textField?.text = ""
        }
        alert.addAction(alertAction)
        present(alert, animated: true)
    }
}
