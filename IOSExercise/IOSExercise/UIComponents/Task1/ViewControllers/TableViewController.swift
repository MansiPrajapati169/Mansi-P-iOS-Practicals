//
//  TableViewController.swift
//  IOSExercise
//
//  Created by Mansi Prajapati on 02/03/22.
//

import UIKit

class TableViewController: UIViewController {
    
    //MARK: - Outlets
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var labelTableHeader: UILabel!
    @IBOutlet var tableHeader: UIView!
    
    //MARK: - Variables
    var data =  DataModel.getSocialMediaDetails()
    
    //MARK: - View Controller LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dataInit()
    }
}

//MARK: - Extra Functions
extension TableViewController {
    
    func dataInit() {
        tableView.register(UINib(nibName: Constants.dataTableViewStoryBoard, bundle: nil), forCellReuseIdentifier: Constants.dataTableViewCell)
        tableHeader.frame = CGRect(x: .zero, y: .zero, width: tableView.frame.size.width, height: Constants.fifty)
        tableView.tableHeaderView = tableHeader
        
        tableView.delegate = self
        tableView.dataSource = self
    }
}

//MARK: - UITableViewDataSource
extension TableViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: Constants.dataTableViewCell) as? DataTableViewCell {
            
            cell.images.image = UIImage(named: data[indexPath.section].images[indexPath.row])
            cell.cellLabel.text = data[indexPath.section].names[indexPath.row]
            return cell
        }
        
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data[section].names.count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return data.count
    }
}

//MARK: - UITableViewDelegate
extension TableViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        let view = UIView(frame: CGRect(x: .zero, y: .zero, width: tableView.frame.width, height: Constants.hundred))
        let lbl = UILabel(frame: CGRect(x: .zero, y: .zero, width: view.frame.width, height: view.frame.height))
        
        lbl.text = data[section].sectionTitle
        lbl.textColor = UIColor.blue
        lbl.center.y = view.center.y
        lbl.textAlignment = .center
        view.addSubview(lbl)
        
        return view
    }
    
    func tableView(_ tableView: UITableView,heightForFooterInSection section: Int) -> CGFloat {
        return Constants.ten
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return Constants.hundred
    }
    
    func tableView(_ tableView: UITableView,viewForFooterInSection section: Int) -> UIView? {
        
        let footerView = UIView(frame: CGRect(x: .zero,y: .zero,width: self.tableView.frame.width,height: Constants.hundred))
        footerView.backgroundColor = .orange
        return footerView
    }
}
