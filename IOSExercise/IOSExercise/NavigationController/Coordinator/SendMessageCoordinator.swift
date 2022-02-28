
import UIKit

class SendMessageCoordinator: Coordinator {

    //MARK: - Variables
    var navigationController : UINavigationController?
    
    init(_ navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    //MARK: - Coordinator Protocol Methods
    func start() {
        if let firstVC = UIStoryboard(name: Constants.navigationStoryBoard, bundle: nil).instantiateViewController(withIdentifier: Constants.sendMessageIdentifier) as? SendMessageController {
            firstVC.firstVCoordinator = self
            navigationController?.pushViewController(firstVC, animated: true)
        }
    }
    
    func goToReceiveVC(_ message : String,  _ delegate:ReceiveMessageProtocol) {
        if let navigationController = navigationController {
            let secondVC = ReceiveMessageCoordinator(navigationController)
            secondVC.startWithData(message,delegate)
        }
    }
    
    func finish() {
        // we are not popping anything from sendMessageController so we don't have to implement this function
    }
}
