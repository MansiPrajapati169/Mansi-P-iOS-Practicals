//
//  SongDetailsViewController.swift
//  IOSExercise
//
//  Created by Mansi Prajapati on 14/04/22.
//

import UIKit

class SongDetailsViewController: UIViewController, Storyboarded {
    
    //MARK: - Outlets
    @IBOutlet weak var lblSinger: UILabel!
    @IBOutlet weak var lblSong: UILabel!
    @IBOutlet weak var ivSong: UIImageView!
    
    //MARK: - Variables
    var selectedSong: SongModel?
    
    //MARK: - View Controller LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setData()
    }
    
    //MARK: - IBActions
    @IBAction func loginClick(_ sender: Any) {
        if let loginVC = self.storyboard?.instantiateViewController(withIdentifier: Constants.loginMvvmViewController) as? LoginMvvmViewController {
            navigationController?.pushViewController(loginVC, animated: true)
        }
    }
    
    /// for setting data
    fileprivate func setData() {
        guard let selectedSong = selectedSong else {
            return
        }
        
        lblSong.text = selectedSong.songName
        lblSinger.text = selectedSong.singer
        ivSong.image = UIImage(named: selectedSong.image)
    }
}
