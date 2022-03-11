
import UIKit

class AppCoordinator : Coordinator {
    
    //MARK: - Outlet
    var navigationController : UINavigationController?
    
    init(_ navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    //MARK: - Coordinator Protocol Methods
    func start() {
        if let navigationController = navigationController {
            let mainVC = MainCoordinator(navigationController)
            mainVC.start()
        }
    }
    
    func finish() {
        // we are not popping anything so we don't have to implement this function
    }
}
