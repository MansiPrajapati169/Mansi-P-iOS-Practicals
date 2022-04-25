
import UIKit

class TableViewFooterTitleViewController: UIViewController {
    
    //MARK: - Outlets
    @IBOutlet var footerView: UIView!
    @IBOutlet weak var tableView: UITableView!

    //MARK: - View Controller LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setData()
    }
}

//MARK: - UITableViewDataSource
extension TableViewFooterTitleViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Constants.intTwo
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        switch indexPath.row {
        case .zero :
            if let cell = tableView.dequeueReusableCell(withIdentifier: Constants.firstCell) {
                    return cell
                }
                
        case Constants.intOne :
            if let cell = tableView.dequeueReusableCell(withIdentifier: Constants.secondCell) {
                    return cell
                }
            default: break
        }
        
        return UITableViewCell()
    }
}

extension TableViewFooterTitleViewController {
    
    /// This function is for setting attributes of navigation title and footer of tableView
    fileprivate func setData() {
        self.title = NSLocalizedString("Setting", comment: " ")
        self.navigationController?.navigationBar.prefersLargeTitles = true
        footerView.frame = CGRect(x: .zero, y: .zero, width: tableView.frame.size.width, height: Constants.fifty)
        tableView.tableFooterView = footerView
    }
}
