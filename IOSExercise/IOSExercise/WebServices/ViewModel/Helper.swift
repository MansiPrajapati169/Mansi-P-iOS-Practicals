//
//  Helper.swift
//  IOSExercise
//
//  Created by Mansi Prajapati on 31/03/22.
//

import Foundation
import UIKit

class Helper : UIViewController {
    
    static func showAlert(message: String, viewController: UIViewController) {
         let alertController = UIAlertController(title: NSLocalizedString("Alert!", comment: ""), message: message, preferredStyle: .alert)
         alertController.addAction(UIAlertAction(title: NSLocalizedString("Dismiss", comment: ""), style: .default))
         viewController.present(alertController, animated: true, completion: nil)
     }
}
