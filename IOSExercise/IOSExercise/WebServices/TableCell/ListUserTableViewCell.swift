//
//  ListUserTableViewCell.swift
//  IOSExercise
//
//  Created by Mansi Prajapati on 28/03/22.
//

import UIKit

class ListUserTableViewCell: UITableViewCell {

    //MARK: - Outlets
    @IBOutlet weak var lblEmail: UILabel!
    @IBOutlet weak var lblLastName: UILabel!
    @IBOutlet weak var lblFirstName: UILabel!
    @IBOutlet weak var ivUser: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
