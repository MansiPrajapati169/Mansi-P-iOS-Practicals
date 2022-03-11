
import UIKit

class FourthViewController: UIViewController {
    
    //MARK: - Variables
    var popButton = UIBarButtonItem()
    
    //MARK: - View Controller Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setPopButton()
    }
    
    //MARK: - IBActions
    @IBAction func goToRoot(_ sender: UIButton) {
        self.navigationController?.popToRootViewController(animated: true)
    }
    
    @IBAction func tableViewClick(_ sender: Any) {
        if let tableVC = self.storyboard?.instantiateViewController(withIdentifier: Constants.tableViewFooterIdentifier) as? TableViewFooterTitleViewController {
            navigationController?.pushViewController(tableVC, animated: true)
        }
    }
    
    @IBAction func popToViewController(_ sender: UIButton) {
        if let vcList = self.navigationController?.viewControllers.first (where: {
            $0.isKind(of: ReceiveMessageController.self)
        }) {
            self.navigationController?.popToViewController(vcList ,animated: true)
        }
    }
}

extension FourthViewController {
    
    /// This function is for creating rightBar button in navigation item
    fileprivate func setPopButton() {
        self.title = NSLocalizedString("Fourth", comment: "")
        popButton = UIBarButtonItem(image: UIImage(systemName: "pin.fill"),style: UIBarButtonItem.Style.plain ,target: self, action: #selector(OnPopClicked))
        self.navigationItem.rightBarButtonItem = popButton
    }
    
    //MARK: - Objective-C Function
    @objc func OnPopClicked() {
        if let popVC = self.storyboard?.instantiateViewController(withIdentifier: Constants.fifthIdentifier) as? FifthViewController{
            popVC.modalPresentationStyle = .popover
            let popover: UIPopoverPresentationController = popVC.popoverPresentationController!
            popover.barButtonItem = popButton
            present(popVC, animated: true, completion:nil)
        }
    }
    
}
