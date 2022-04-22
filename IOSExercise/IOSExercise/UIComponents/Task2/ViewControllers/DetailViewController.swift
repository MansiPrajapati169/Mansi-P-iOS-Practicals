//
//  DetailViewController.swift
//  IOSExercise
//
//  Created by Mansi Prajapati on 08/03/22.
//

import UIKit

class DetailViewController: UIViewController {

    //MARK: - Outlets
    @IBOutlet weak var stackView: UIStackView!
    @IBOutlet weak var detailLabel: UILabel!
    @IBOutlet weak var detailImage: UIImageView!
    
    //MARK: - Variables
    var name = ""
    var image = ""
    
    //MARK: - View Controller LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
     
        detailLabel.text = name
        detailImage.image = UIImage(named: image)
    }
    
    //MARK: - IBActions
    @IBAction func switchClicked(_ sender: UISwitch) {
        
        if sender.isOn {
            stackView.axis = .vertical
        }
        else {
            stackView.axis = .horizontal
        }
    }
}
