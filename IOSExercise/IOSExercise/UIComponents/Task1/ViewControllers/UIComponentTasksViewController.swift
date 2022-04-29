//
//  UIComponentTasksViewController.swift
//  IOSExercise
//
//  Created by Mansi Prajapati on 29/04/22.
//

import UIKit

class UIComponentTasksViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    //MARK: - IBActions
    @IBAction func taskTwo(_ sender: UIButton) {
        if let iosCVC = UIStoryboard(name: Constants.tabBarStoryBoard, bundle: nil) .instantiateViewController(withIdentifier: Constants.tabBarIdentifier) as? TabBarViewController {
            navigationController?.pushViewController(iosCVC, animated: true)
        }
    }
        
    @IBAction func tableViewTasks(_ sender: UIButton) {
        if let tableVC = self.storyboard?.instantiateViewController(withIdentifier: Constants.tableViewIdentifier) as? TableViewController {
            navigationController?.pushViewController(tableVC, animated: true)
        }
    }
}
