//
//  ListUserViewController.swift
//  IOSExercise
//
//  Created by Mansi Prajapati on 28/03/22.
//

import UIKit
import Alamofire

class ListUserViewController: UIViewController {
    
    //MARK: - Outlets
    @IBOutlet weak var btnFloating: UIButton!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    @IBOutlet weak var tvUser: UITableView!

    //MARK: - Variables
    var user = [Users]()
    
    //MARK: - View Controller LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()

        setData()
        loadUserData()
    }
    
    //MARK: - IBAction
    @IBAction func floatingClick(_ sender: UIButton) {
        if let listUserVC = self.storyboard?.instantiateViewController(withIdentifier: Constants.addUserViewIdentifier) as? AddUserViewController {
            self.navigationController?.pushViewController(listUserVC, animated: true)
        }
    }
}

//MARK: - UItableViewDataSource
extension ListUserViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return user.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Constants.listUserCellIdentifier) as? ListUserTableViewCell
        if(user.count > .zero) {
            let userData = user[indexPath.row]
            guard let imageUrl = URL(string: userData.avatar) else{ return UITableViewCell()}
            cell?.ivUser.image = try? UIImage(data: Data(contentsOf: imageUrl ))
            cell?.lblFirstName.text = userData.firstName
            cell?.lblLastName.text = userData.lastName
            cell?.lblEmail.text = userData.email
        }
        return cell ?? UITableViewCell()
    }
}

//MARK: - UITableViewDelegate
extension ListUserViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let listUserVC = self.storyboard?.instantiateViewController(withIdentifier: Constants.userDetailsIdentifier) as? UserDetailsViewController {
            listUserVC.id = user[indexPath.row].id
            self.navigationController?.pushViewController(listUserVC, animated: true)
            tableView.deselectRow(at: indexPath, animated: true)
        }
    }
}

//MARK: - API call and Parameter Setting
extension ListUserViewController {
    
    fileprivate func setData() {
        tvUser.delegate = self
        tvUser.dataSource = self
        activityIndicator.startAnimating()
        btnFloating.layer.masksToBounds = true
        btnFloating.layer.cornerRadius = btnFloating.frame.height / Constants.two
    }
    
    fileprivate func loadUserData() {
        AF.request(Constants.listUserUrl).response { (response) in
            
            do {
                guard let data = response.data else {
                    return
                }
                let result = try JSONDecoder().decode(Response.self, from: data)
                self.user = result.data
                self.activityIndicator.hidesWhenStopped = true
                self.activityIndicator.stopAnimating()
                self.tvUser.reloadData()
            }
            catch {
                Helper.showAlert(message: NSLocalizedString("No response", comment: " "), viewController: self)
            }
        }
    }
}
