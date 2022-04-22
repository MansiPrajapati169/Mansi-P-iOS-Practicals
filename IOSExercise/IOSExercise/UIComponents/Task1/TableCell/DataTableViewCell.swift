//
//  dataTableViewCell.swift
//  IOSExercise
//
//  Created by Mansi Prajapati on 02/03/22.
//

import UIKit

class DataTableViewCell: UITableViewCell {
    
    //MARK: - Outlets
    @IBOutlet weak var images: UIImageView!
    @IBOutlet weak var cellLabel: UILabel!
    
    //MARK: - UITableViewCell
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
