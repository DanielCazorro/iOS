//
//  LoginViewController.swift
//  DragonBall
//
//  Created by Daniel Cazorro Frías on 24/10/23.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var emailFieldError: UILabel!
    @IBOutlet weak var passwordFieldError: UILabel!
    @IBOutlet weak var loadingView: UIView!
    
    @IBAction func onLoginPressed() {
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

