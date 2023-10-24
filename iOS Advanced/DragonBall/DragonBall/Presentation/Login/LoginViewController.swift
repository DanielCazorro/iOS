//
//  LoginViewController.swift
//  DragonBall
//
//  Created by Daniel Cazorro Frías on 24/10/23.
//

import UIKit

protocol LoginViewControllerDelegate {
    func onLoginPressed(email: String?, password: String?)
}

class LoginViewController: UIViewController {
    
    // MARK: - IBOutlets -
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var emailFieldError: UILabel!
    @IBOutlet weak var passwordFieldError: UILabel!
    @IBOutlet weak var loadingView: UIView!
    
    // MARK: - IBActions -
    @IBAction func onLoginPressed() {
        // TODO: Obtener el email y password introducidos por el usuario y enviarlos al servicio del API de Login
        
        viewModel?.onLoginPressed(
            email: emailField.text,
            password: passwordField.text
        )
    }
    
    // MARK: - Public Properties -
    var viewModel: LoginViewControllerDelegate?
    
    private enum FieldType: Int {
        case email = 0
        case password
    }
    
    // MARK: - Lifecycle -
    override func viewDidLoad() {
        super.viewDidLoad()
        initViews()
    }
    
    // MARK: - Private functions -
    private func initViews() {
        emailField.delegate = self
        emailField.tag = FieldType.email.rawValue
        passwordField.delegate = self
        passwordField.tag = FieldType.email.rawValue
        
        view.addGestureRecognizer(
            UITapGestureRecognizer(
                target: self,
                action: #selector(dismissKeyboard)
            )
        )
    }
    
    @objc func dismissKeyboard() {
        
    }
}

extension LoginViewController: UITextFieldDelegate {
    func textFieldDidEndEditing(_ textField: UITextField) {
        /*
         if emailField == textField {
         emailFieldError.isHidden = true
         } else if passwordField == textField {
         passwordFieldError.isHidden = true
         }
         }*/
        switch FieldType(rawValue: textField.tag) {
        case .email:
            emailFieldError.isHidden = true
            
        case .password:
            passwordFieldError.isHidden = true
            
        default:
            break
        }
    }
}
