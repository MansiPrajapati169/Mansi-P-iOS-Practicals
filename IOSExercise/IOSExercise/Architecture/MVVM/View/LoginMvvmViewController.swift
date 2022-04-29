//
//  LoginMVVMViewController.swift
//  IOSExercise
//
//  Created by Mansi Prajapati on 20/04/22.
//

import UIKit

class LoginMvvmViewController: UIViewController {
    
    //MARK: - Outlets
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var tfName: UITextField!
    
    //MARK: - Variables
    var viewModel = SongViewModel()
    
    //MARK: - ViewController LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        bindViewModel()
    }
    
    func bindViewModel() {
        viewModel.userName.bind({ (name) in
            self.lblName.text = name
        })
    }
    
    //MARK: - IBActions
    @IBAction func loginClick(_ sender: Any) {
        guard let name = tfName.text else {
            return
        }
        viewModel.setUserName(name: name)
    }
}
