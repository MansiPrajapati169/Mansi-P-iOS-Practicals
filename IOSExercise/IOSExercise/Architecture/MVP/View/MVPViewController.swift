//
//  CounterViewController.swift
//  IOSExercise
//
//  Created by Mansi Prajapati on 13/04/22.
//

import UIKit

class MVPViewController: UIViewController {

    //MARK: - Outlets
    @IBOutlet weak var lblCount: UILabel!
    
    //MARK: - Variables
    var presenter = Presenter()
    
    //MARK: - View Controller LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.delegate = self
    }
    
    //MARK: - IBAction
    @IBAction func counter(_ sender: UIButton) {
        presenter.buttonTapped()
    }
}

extension MVPViewController : CounterDelegate  {
    
    /// for setting data 
    func updateCount(count: Int, numberType: NumberType) {
        lblCount.text = numberType.rawValue + " " + String(count)
    }
}
