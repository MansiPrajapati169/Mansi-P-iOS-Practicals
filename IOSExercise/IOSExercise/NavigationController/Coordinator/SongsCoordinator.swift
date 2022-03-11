//
//  SongsCoordinator.swift
//  IOSExercise
//
//  Created by Mansi Prajapati on 14/04/22.
//

import Foundation
import UIKit

class SongsCoordinator : Coordinator {
    
    //MARK: - Variables
    var navigationController : UINavigationController?
    
    init(_ navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    //MARK: - Coordinator Protocol Methods
    func start() {
        let songsVC = SongsViewController.instantiate(from: .songs)
        songsVC.coordinator = self
        navigationController?.pushViewController(songsVC, animated: true)
    }
    
    func finish() {
        // we are not popping anything from Main so we don't have to implement this function
    }
    
    /// navigation from Song to SongDetails storyboard
    func goToSongDetails(_ songDetail: SongModel) {
        if let navigationController = navigationController {
            let songDetailVC = SongsDetailsCoordinator(navigationController)
            songDetailVC.startsWithData(songDetail)
        }
    }
    
}
