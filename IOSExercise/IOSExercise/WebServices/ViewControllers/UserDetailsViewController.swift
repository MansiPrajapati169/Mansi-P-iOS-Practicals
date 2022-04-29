//
//  UserDetailsViewController.swift
//  IOSExercise
//
//  Created by Mansi Prajapati on 29/03/22.
//

import UIKit
import Alamofire

class UserDetailsViewController: UIViewController {
    
    //MARK: - Outlets
    @IBOutlet weak var ivUserDetails: UIImageView!
    @IBOutlet weak var tvId: UILabel!
    @IBOutlet weak var tvFirstName: UILabel!
    @IBOutlet weak var tvLastName: UILabel!
    @IBOutlet weak var tvEmail: UILabel!
    
    //MARK: - Variables
    var id: Int?
    
    //MARK: - View Controller LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadUserDetails()
    }
}

//MARK: - API call
extension UserDetailsViewController {
    
    fileprivate func loadUserDetails() {
        guard let id = id else {return}
        guard let url = URL(string: Constants.userDetailsUrl+"\(id)") else { return }
        var request = URLRequest(url: url)
        request.httpMethod = Constants.get
        request.setValue(Constants.applicationJson, forHTTPHeaderField: Constants.contentType)
        
        URLSession.shared.dataTask(with: request) {
            (data, response, error) in
            
            guard let data = data else{
                return
            }
            
            do {
                let result = try JSONDecoder().decode(SingleUser.self, from: data)
                let user = result.data
                DispatchQueue.main.async {
                    self.tvId.text = String(user.id)
                    self.tvFirstName.text = user.firstName
                    self.tvLastName.text = user.lastName
                    self.tvEmail.text = user.email
                    guard let imageUrl = URL(string: user.avatar) else{return}
                    self.ivUserDetails.image = try? UIImage(data: Data(contentsOf: imageUrl ))
                    
                }
            }
            catch {
                print("")
            }
            if let error = error {
                print(error)
                return
            }
        }.resume()
    }
}

