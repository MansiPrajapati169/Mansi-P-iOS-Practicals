//
//  SongTableViewCell.swift
//  IOSExercise
//
//  Created by Mansi Prajapati on 14/04/22.
//

import UIKit

class SongTableViewCell: UITableViewCell {
    
    //MARK: - Outlets
    @IBOutlet weak var ivSong: UIImageView!
    @IBOutlet weak var lblSong: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
