
import UIKit

class SendMessageController: UIViewController {

    //MARK: - Outlets
    @IBOutlet weak var addMessageButton: UIButton!
    @IBOutlet weak var addMessageTextField: UITextField!
    
    //MARK: - Variables
    var firstVCoordinator : SendMessageCoordinator?
    var receiveMessage = ""
    var rmessage = ""
    
    //MARK: - View Controller Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
    
        setData()
    }
    
    //MARK: - IBActions
    @IBAction func sendButtonClick(_ sender: UIButton) {
//        firstVCoordinator?.goToReceiveVC(addMessageTextField.text ?? NSLocalizedString("No Message", comment: " "),self)
        if let secondVC = self.storyboard?.instantiateViewController(withIdentifier: Constants.receiveMessageIdentifier) as? ReceiveMessageController {
            secondVC.delegate = self
            self.navigationController?.pushViewController(secondVC, animated: true)
        }
    }
}
  
extension SendMessageController: ReceiveMessageProtocol {
    
    //MARK: - ReceiveMessageProtocol method
    func sendData(myData: String) {
        self.addMessageTextField.text = myData
    }
    
    /// This function is for assigning coordinator and creating rightBar button in navigation item
    fileprivate func setData() {
        self.navigationItem.largeTitleDisplayMode = .never
        self.title = NSLocalizedString("First", comment: " ")
    
        if let navController = self.navigationController {
            firstVCoordinator = SendMessageCoordinator(navController)
        }
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: NSLocalizedString("Second", comment: " "), style: .plain, target: self, action: #selector(secondButton))
        self.navigationItem.backButtonTitle = NSLocalizedString("HomeBack", comment: " ")
    }
    
    //MARK: - Objective - C Functions
    @objc func secondButton () {
        if let receive = self.storyboard?.instantiateViewController(withIdentifier:  Constants.receiveMessageIdentifier) as? ReceiveMessageController {
            receive.message = addMessageTextField.text ?? NSLocalizedString("No Message", comment: " ")
            self.navigationController?.pushViewController(receive, animated: true)
        }
    }
}
