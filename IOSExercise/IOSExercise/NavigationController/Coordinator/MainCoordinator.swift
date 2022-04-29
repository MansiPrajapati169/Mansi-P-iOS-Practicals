
import UIKit

class MainCoordinator : Coordinator {
    
    //MARK: - Variables
    var navigationController : UINavigationController?
    
    init(_ navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    //MARK: - Coordinator Protocol Methods
    func start() {
        let mainVC = ViewController.instantiate(from: .main)
        mainVC.coordinator = self
        navigationController?.pushViewController(mainVC, animated: true)

    }
    
    func finish() {
        // we are not popping anything from Main so we don't have to implement this function
    }
    
    /// navigation from mainVC to architectureVC
    func goToTasksVC() {
        if let navigationController = navigationController {
            let architectureTask = ArchitectureCoordinator(navigationController)
            architectureTask.start()
        }
    }
}
