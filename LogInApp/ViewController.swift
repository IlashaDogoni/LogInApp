//
//  ViewController.swift
//  LogInApp
//
//  Created by Ilya Kokorin on 23.11.2021.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet var userNameTextField: UITextField!
   
    @IBOutlet var passwordTextField: UITextField!
    private let user = User.getUserData()
    
    
    @IBAction func logInPressed(_ sender: Any) {
        guard
            userNameTextField.text == user.login,
            passwordTextField.text == user.password
        else {
            showAlert(title: "Invalid login or password",
                      message: "Please, enter correct login and password",
                      textField: passwordTextField)
            return
        }
        
    }
    
    @IBAction func forgotUserName(_ sender: Any) {
        showAlert(title: "Oops!",
                  message: "Your name is User 😉")
    }
    
    @IBAction func forgotPassword(_ sender: Any) {
        showAlert(title: "Oops!",
                  message: "Your password is Password 😉")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let tabBarController = segue.destination as! UITabBarController
        let welcomeVC = tabBarController.viewControllers?.first as! WelcomeViewController
        welcomeVC.user = user
    }
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}
extension LoginViewController {
    private func showAlert(title: String, message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            textField?.text = nil
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

