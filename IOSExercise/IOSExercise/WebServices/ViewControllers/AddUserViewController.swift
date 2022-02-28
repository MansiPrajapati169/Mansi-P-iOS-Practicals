//
//  AddUserViewController.swift
//  IOSExercise
//
//  Created by Mansi Prajapati on 30/03/22.
//

import UIKit
import Alamofire

class AddUserViewController: UIViewController {
    
    //MARK: - Outlets
    @IBOutlet weak var tfJob: UITextField!
    @IBOutlet weak var tfName: UITextField!
    
    //MARK: - View Controller LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //MARK: - IBAction
    @IBAction func btnAdd(_ sender: UIButton) {
        addUser()
    }
    
}

//MARK: - API call
extension AddUserViewController {
    
    fileprivate func addUser() {
        let parameters = [
            "name": tfName.text ,
            "job": tfJob.text
        ]
        
        AF.request(Constants.addUserUrl, method: .post, parameters: parameters as Parameters, encoding: JSONEncoding.default, headers: [:]).response {
            response in
            do {
                guard let data = response.data else {
                    return
                }
                let result = try JSONDecoder().decode(AddUser.self, from: data)
                let message = "Name: \(result.name)  \nJob: \(result.job) \nid: \(result.id) \nCreatedAt : \(result.createdAt)"
                Helper.showAlert(message: message, viewController: self)
            }
            catch {
                Helper.showAlert(message: NSLocalizedString("No response", comment: " "), viewController: self)
            }
        }
    }
}
