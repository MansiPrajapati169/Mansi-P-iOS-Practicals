//
//  ArchitectureTasksViewController.swift
//  IOSExercise
//
//  Created by Mansi Prajapati on 14/04/22.
//

import UIKit

class ArchitectureTasksViewController: UIViewController,Storyboarded {
    
    //MARK: - variables
    var coordinator: ArchitectureCoordinator?
    
    //MARK: - View Controller Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    //MARK: - IBAcions
    @IBAction func btnMvvm(_ sender: UIButton) {
        coordinator?.goToMvvm()
    }
    
    @IBAction func btnMvc(_ sender: UIButton) {
        if let mvcVC = UIStoryboard(name: Constants.mvcStoryBoard, bundle: nil).instantiateViewController(withIdentifier: Constants.mvcIdentifier) as? MVCViewController {
            navigationController?.pushViewController(mvcVC, animated: true)
        }
    }
    
    @IBAction func btnMvp(_ sender: UIButton) {
        if let mvpVC = UIStoryboard(name: Constants.mvpStoryBoard, bundle: nil).instantiateViewController(withIdentifier: Constants.mvpIdentifier) as? MVPViewController {
            navigationController?.pushViewController(mvpVC, animated: true)
        }
    }
}
