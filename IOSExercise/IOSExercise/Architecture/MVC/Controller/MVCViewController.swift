//
//  MVCViewController.swift
//  IOSExercise
//
//  Created by Mansi Prajapati on 12/04/22.
//

import UIKit

class MVCViewController: UIViewController {

    //MARK: - Outlets
    @IBOutlet weak var tfRollNO: UITextField!
    @IBOutlet weak var tfName: UITextField!
    
    //MARK: - Variables
    var data: StudentData?
    
    //MARK: - ViewController LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
 
    //MARK: - IBActions
    @IBAction func btnSubmit(_ sender: UIButton) {
        
        guard let name = tfName.text, let rollNo = tfRollNO.text else {return}
        data = StudentData(name: name, rollNo: rollNo)
        guard let data = data else {return}
        
        Helper.showAlert(message: "Name: \(data.name) \n RollNo:  \(data.rollNo)", viewController: self)
        
        print(data.name)
        print(data.rollNo)
    }
}
