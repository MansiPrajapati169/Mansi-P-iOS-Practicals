//
//  LoginViewController.swift
//  IOSExercise
//
//  Created by Mansi Prajapati on 01/03/22.
//

import UIKit

class LoginViewController: UIViewController {

    //MARK: - Outlets
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    
    //MARK: - View Controller LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setAttributes()
    }
}

//MARK: - Extra Functions
extension LoginViewController {
    
    fileprivate func setAttributes() {
        emailTextField.layer.borderWidth = Constants.one
        emailTextField.layer.cornerRadius = Constants.four
        emailTextField.layer.borderColor = UIColor.gray.cgColor
        
        passwordTextField.layer.borderWidth = Constants.one
        passwordTextField.layer.cornerRadius = Constants.four
        passwordTextField.layer.borderColor = UIColor.gray.cgColor
    }
    
}
