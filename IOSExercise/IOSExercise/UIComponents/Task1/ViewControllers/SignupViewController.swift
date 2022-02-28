//
//  SignupViewController.swift
//  IOSExercise
//
//  Created by Mansi Prajapati on 01/03/22.
//

import UIKit

class SignupViewController: UIViewController {
    
    //MARK: -  Outlets
    @IBOutlet weak var submitButton: UIButton!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var bioTextView: UITextView!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var ageSlider: UISlider!
    @IBOutlet weak var maleRadioButton: UIButton!
    @IBOutlet weak var femaleRadioButton: UIButton!
    @IBOutlet weak var progressView: UIProgressView!
    
    //MARK: - Actions
    @IBAction func ageSliderValueChanged(_ sender: UISlider) {
        ageLabel.text = "\(Int(sender.value))"
    }
    
    @IBAction func submitButtonClick(_ sender: UIButton) {
        UIView.animate(withDuration: Constants.progressDuration) {
            self.progressView.setProgress(Float(Constants.progress), animated: true)
        }
    }
    
    @IBAction func maleRadioButtonClick(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
        femaleRadioButton.isSelected = false
    }
    
    @IBAction func femaleRadioButtonClick(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
        maleRadioButton.isSelected = false
    }
    
    //MARK: - View Controller LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setAttributes()
    }
    
}

extension SignupViewController {
    
    fileprivate func setAttributes() {
        bioTextView.layer.borderWidth = Constants.one
        bioTextView.layer.cornerRadius = Constants.four
        bioTextView.layer.borderColor = UIColor.gray.cgColor
        
        emailTextField.layer.borderWidth = Constants.one
        emailTextField.layer.cornerRadius = Constants.four
        emailTextField.layer.borderColor = UIColor.gray.cgColor
        
        passwordTextField.layer.borderWidth = Constants.one
        passwordTextField.layer.cornerRadius = Constants.four
        passwordTextField.layer.borderColor = UIColor.gray.cgColor
        
        submitButton.layer.cornerRadius = Constants.four
    }
}

