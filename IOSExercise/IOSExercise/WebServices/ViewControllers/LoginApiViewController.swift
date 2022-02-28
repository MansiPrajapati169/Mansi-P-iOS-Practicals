//
//  LoginApiViewController.swift
//  IOSExercise
//
//  Created by Mansi Prajapati on 25/03/22.
//

import UIKit

class LoginApiViewController: UIViewController {
    
    //MARK: - Outlets
    @IBOutlet weak var lblResponse: UILabel!
    @IBOutlet weak var tfPassword: UITextField!
    @IBOutlet weak var tfEmail: UITextField!
    
    //MARK: - Variables
    var responseMessage: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tfEmail.delegate = self
        tfEmail.returnKeyType = .done
    }
    
    //MARK: - IBAction
    @IBAction func submitClick(_ sender: UIButton) {
        postMethod()
    }
}

//MARK: - UITextFieldDelegate
extension LoginApiViewController: UITextFieldDelegate {
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches,
                           with: event)
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool
    {
        switch textField {
        case tfEmail:
            tfPassword.becomeFirstResponder()
        case tfPassword:
            tfPassword.resignFirstResponder()
        default:
            break
        }
        return true
    }
}

extension LoginApiViewController {
    
    /// For email validation
    func isValidEmail(emailID: String) -> Bool {
        let emailRegEx = Constants.emailPattern
        let emailTest = NSPredicate(format: Constants.emailFormat, emailRegEx)
        return emailTest.evaluate(with: emailID)
    }
    
    /// For Calling Api
    func postMethod() {
        guard let url = URL(string: Constants.loginApiUrl) else { return }
        guard let email = tfEmail.text else {return}
        guard let password = tfPassword.text else {return}
        let uploadDataModel = UploadData(email: email,password: password)
        guard let jsonData = try? JSONEncoder().encode(uploadDataModel) else {
            return
        }
        
        var request = URLRequest(url: url)
        
        request.httpMethod = Constants.post
        request.setValue(Constants.applicationJson, forHTTPHeaderField: Constants.contentType)
        request.httpBody = jsonData
        
        URLSession.shared.dataTask(with: request) {
            (data, response, error) in
            
            if let error = error {
                print(error)
                return
            }
            
            guard let data = data else{
                return
            }
            
            if let httpResponse = response as? HTTPURLResponse {
                if httpResponse.statusCode == 200 {
                    DispatchQueue.main.async {
                        guard let email = self.tfEmail.text else {return}
                        
                        if ((email.isEmpty) == false && self.isValidEmail(emailID: email) == true ) {
                            self.lblResponse.text = self.responseMessage
                            if let listUserVC = self.storyboard?.instantiateViewController(withIdentifier: Constants.listUserIdentifier) as? ListUserViewController {
                                self.navigationController?.pushViewController(listUserVC, animated: true)
                            }
                        }
                        else {
                            Helper.showAlert(message: NSLocalizedString("Enter valid email", comment: " "), viewController: self)
                        }
                    }
                }
                else {
                    DispatchQueue.main.async {
                        Helper.showAlert(message: NSLocalizedString("No response", comment: " "), viewController: self)
                    }
                }
            }
            self.responseMessage = String(data: data, encoding: .utf8) ?? NSLocalizedString("empty", comment: " ")
        }.resume()
    }
}
