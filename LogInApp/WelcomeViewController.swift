//
//  WelomeViewController.swift
//  LogInApp
//
//  Created by Ilya Kokorin on 10.12.2021.
//

import UIKit
class WelcomeViewController: UIViewController{
    @IBOutlet var welcomeLabel: UILabel!
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
            welcomeLabel.text = "Hi, \(user.login)"
        
    }
}
