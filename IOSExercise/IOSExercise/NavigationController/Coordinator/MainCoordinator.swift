
import UIKit

class MainCoordinator : Coordinator {
    
    //MARK: - Variables
    var navigationController : UINavigationController?
    
    init(_ navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    //MARK: - Coordinator Protocol Methods
    func start() {
        if let mainVC = UIStoryboard(name: Constants.mainStoryBoard, bundle: nil).instantiateViewController(withIdentifier: Constants.viewController) as? ViewController {
            navigationController?.pushViewController(mainVC, animated: true)
        }
    }
    
    func finish() {
        // we are not popping anything from Main so we don't have to implement this function
    }
}
