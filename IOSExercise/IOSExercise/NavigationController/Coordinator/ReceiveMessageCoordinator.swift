
import UIKit

class ReceiveMessageCoordinator: Coordinator {
    
    //MARK: - Variables
    var navigationController : UINavigationController?
    
    init(_ navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    //MARK: - Coordinator Protocol Methods
    func start() {
        if let secondVC = UIStoryboard(name: Constants.navigationStoryBoard, bundle: nil).instantiateViewController(withIdentifier: Constants.receiveMessageIdentifier) as? ReceiveMessageController {
            secondVC.secondVCoordinator = self
            navigationController?.pushViewController(secondVC, animated: true)
        }
    }
    
    func startWithData(_ message: String, _ delegate:ReceiveMessageProtocol) {
        if let secondVC = UIStoryboard(name: Constants.navigationStoryBoard, bundle: nil).instantiateViewController(withIdentifier: Constants.receiveMessageIdentifier) as? ReceiveMessageController {
            secondVC.delegate = delegate
            secondVC.message = message
            navigationController?.pushViewController(secondVC, animated: true)
        }
    }
    
    func finish() {
        navigationController?.popViewController(animated: true)
    }
}
