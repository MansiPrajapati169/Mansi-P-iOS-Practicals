//
//  SongsDetails.swift
//  IOSExercise
//
//  Created by Mansi Prajapati on 14/04/22.
//

import Foundation
import UIKit

class SongsDetailsCoordinator : Coordinator {
    
    //MARK: - Variables
    var navigationController : UINavigationController?
    
    init(_ navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    //MARK: - Coordinator Protocol Methods
    func start() {
        let songsDetailsVC = SongDetailsViewController.instantiate(from: .songsDetails)
        navigationController?.pushViewController(songsDetailsVC, animated: true)
    }
    
    func finish() {
        // we are not popping anything from Main so we don't have to implement this function
    }
    
    /// for fetching data
    func startsWithData(_ songDetail: SongModel) {
        let songsDetailsVC = SongDetailsViewController.instantiate(from: .songsDetails)
        songsDetailsVC.selectedSong = songDetail
        navigationController?.pushViewController(songsDetailsVC, animated: true)
    }
    
}
