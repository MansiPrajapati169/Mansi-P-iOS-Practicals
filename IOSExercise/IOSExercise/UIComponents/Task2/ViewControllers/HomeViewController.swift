//
//  HomeViewController.swift
//  IOSExercise
//
//  Created by Mansi Prajapati on 04/03/22.
//

import UIKit

class HomeViewController: UIViewController {
    
    //MARK: - Outlets
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var stepper: UIStepper!
    @IBOutlet weak var searchBar: UISearchBar!
    
    //MARK: - Variables
    var newData: [CollectionDataModel] = []
    var itemName : String!
    var itemImage : String!
    var refreshControl = UIRefreshControl()
    let collectionDataModel = CollectionDataModel.collectionData
    
    //MARK: - View Controller LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        searchBar.delegate = self
        tableView.register(UINib(nibName: Constants.dataTableViewStoryBoard, bundle: nil), forCellReuseIdentifier: Constants.dataTableViewCell)
        
        refreshControl.addTarget(self, action:  #selector(refreshAction), for: .valueChanged)
        tableView.refreshControl = refreshControl
    }

    @objc func refreshAction() {
        tableView.reloadData()
        refreshControl.endRefreshing()
    }
    
    //MARK: - IBActions
    @IBAction func stepperValueChanged(_ sender: UIStepper) {

        if Int(sender.value) == .zero {
            newData = []
            collectionView.reloadData()
            tableView.reloadData()
            return
        }
        else {
            var tempData: [CollectionDataModel] = []
            
            for index in 1...Int(sender.value) {
                tempData.append(collectionDataModel[index - Constants.intOne])
            }
            
            newData = tempData
            collectionView.reloadData()
            tableView.reloadData()
        }
    }
    
    @IBAction func segmentChanged(_ sender: UISegmentedControl) {
        let selection = sender.selectedSegmentIndex
        
        switch selection {
        case .zero:
                collectionView.isHidden = false
                tableView.isHidden = true
                
        case Constants.intOne:
                tableView.isHidden = false
                collectionView.isHidden = true
                
            default: break
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == Constants.detailSegue {
            guard let vc = segue.destination as? DetailViewController else {
                return
            }
            vc.name = itemName
            vc.image = itemImage
        }
    }
}

//MARK: - UITableViewDataSource
extension HomeViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: Constants.dataTableViewCell) as? DataTableViewCell {
            
            cell.images.image = UIImage(named: newData[indexPath.row].collectionImage)
            cell.cellLabel.text = newData[indexPath.row].collectionName
            return cell
        }
        
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return newData.count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return Constants.intOne
    }
}

//MARK: - UITableViewDelegate
extension HomeViewController : UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        setData(row : indexPath.row)
    }
    
}

//MARK: - UICollectionViewDataSource
extension HomeViewController : UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return newData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: Constants.collectionCell, for: indexPath) as! CollectionViewCell
        
        cell.collectionImage.image = UIImage(named: newData[indexPath.row].collectionImage)
        cell.collectionLabel.text = newData[indexPath.row].collectionName
        cell.layer.cornerRadius = Constants.ten
        cell.layer.borderWidth = Constants.one
        cell.layer.borderColor = UIColor.blue.cgColor
        
        return cell
    }
    
}

//MARK: - UICollectionViewDelegate
extension HomeViewController : UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        setData(row : indexPath.row)
    }
    
}

//MARK: - UISearchBarDelegate
extension HomeViewController : UISearchBarDelegate {
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
     
        if(searchText.isEmpty) {
            newData = collectionDataModel
        }
        else if let text = searchBar.text?.lowercased() {
            newData = newData.filter { it in
                it.collectionName.lowercased().contains(text)
            }
        }
        
        switch segmentedControl.selectedSegmentIndex {
        case .zero:
                collectionView.reloadData()
        case Constants.intOne :
                tableView.reloadData()
        default: break
        }
    }
}

//MARK: - Extra Functions
extension HomeViewController {
    
    func setData(row : Int) {
        itemName = collectionDataModel[row].collectionName
        itemImage = collectionDataModel[row].collectionImage
        performSegue(withIdentifier: Constants.detailSegue, sender: self)
    }
}
