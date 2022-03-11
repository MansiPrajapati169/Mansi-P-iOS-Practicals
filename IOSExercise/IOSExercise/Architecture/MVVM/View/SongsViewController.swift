//
//  SongsViewController.swift
//  IOSExercise
//
//  Created by Mansi Prajapati on 14/04/22.
//

import UIKit

class SongsViewController: UIViewController, Storyboarded {
    
    //MARK: - Outlets
    @IBOutlet weak var tableView: UITableView!
    
    //MARK: - Variables
    var coordinator: SongsCoordinator?
    var viewModel = SongViewModel()
    var songsList: [SongModel]?
    
    //MARK: - View Controller LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setData()
    }
    
    /// for setting data
    fileprivate func setData() {
        tableView.delegate = self
        tableView.dataSource = self
        songsList = viewModel.getSongDetails()
    }
}


//MARK: - UITableViewDataSource
extension SongsViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let numberOfItems = songsList?.count {
            return numberOfItems
        }
        else {
            return .zero
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let songsList = songsList,let cell = tableView.dequeueReusableCell(withIdentifier: Constants.songCellIdentifier) as? SongTableViewCell else {return UITableViewCell()}
        if(songsList.count > .zero) {
            cell.ivSong.image = UIImage(named: songsList[indexPath.row].image)
            cell.lblSong.text = songsList[indexPath.row].songName
        }
        return cell
    }
}

//MARK: - UITableViewDelegate
extension SongsViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let songsList = songsList else {return}
        coordinator?.goToSongDetails(songsList[indexPath.row])
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
