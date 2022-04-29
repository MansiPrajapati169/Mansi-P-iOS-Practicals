//
//  ArchitectureCoordinator.swift
//  IOSExercise
//
//  Created by Mansi Prajapati on 14/04/22.
//

import Foundation
import UIKit

class ArchitectureCoordinator : Coordinator {
    
    //MARK: - Variables
    var navigationController : UINavigationController?
    
    init(_ navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    //MARK: - Coordinator Protocol Methods
    func start() {
        let architectureVC = ArchitectureTasksViewController.instantiate(from: .architecture)
        architectureVC.coordinator = self
        navigationController?.pushViewController(architectureVC, animated: true)
    }
    
    func finish() {
        // we are not popping anything from Main so we don't have to implement this function
    }
    
    /// Navigation to mvvm storyboard
    func goToMvvm() {
        if let navigationController = navigationController {
            let songs = SongsCoordinator(navigationController)
            songs.start()
        }
    }
}
