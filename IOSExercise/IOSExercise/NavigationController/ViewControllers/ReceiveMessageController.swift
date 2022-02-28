
import UIKit

//MARK: - Protocol
protocol ReceiveMessageProtocol {
    func sendData(myData: String)
}

class ReceiveMessageController: UIViewController {
    
    //MARK: - Outlets
    @IBOutlet weak var receiveMessageButton: UIButton!
    @IBOutlet weak var receiveMessageTextField: UITextField!
    
    //MARK: - Variables
    var delegate: ReceiveMessageProtocol? = nil
    var message = ""
    var secondVCoordinator : ReceiveMessageCoordinator?
    
    //MARK: - View Controller LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setData()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        receiveMessageTextField.text = message
    }
    
    //MARK: - IBActions
    @IBAction func goToFourth(_ sender: Any) {
        if let fourthViewController = self.storyboard?.instantiateViewController(withIdentifier: Constants.fourthIdentifier) as? FourthViewController {
            self.navigationController?.pushViewController(fourthViewController, animated: true)
        }
    }

    @IBAction func receiveClick(_ sender: UIButton) {
        let dataToBeSent = self.receiveMessageTextField.text
        self.delegate?.sendData(myData: dataToBeSent ?? NSLocalizedString("No Message", comment: ""))
        secondVCoordinator?.finish()
    }
    
    @IBAction func homeBarButtonClick(_ sender: UIBarButtonItem) {
        self.navigationController?.popToRootViewController(animated: true)
    }
}

extension ReceiveMessageController {
    
    /// This function is for assigning coordinator and creating rightBar button in navigation item
    fileprivate func setData() {
        self.title = NSLocalizedString("Second", comment: " ")
        if let navController = self.navigationController {
            secondVCoordinator = ReceiveMessageCoordinator(navController)
        }
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: NSLocalizedString("Third", comment: ""), style: .plain, target: self, action: #selector(thirdRightBarButton))
    }
    
    //MARK: - Objective - C Functions
    @objc func thirdRightBarButton() {
        if let thirdViewController = self.storyboard?.instantiateViewController(withIdentifier: Constants.thirdIdentifier) as? ThirdViewController {
            self.present(thirdViewController, animated: true, completion: nil)
        }
    }
    
}
