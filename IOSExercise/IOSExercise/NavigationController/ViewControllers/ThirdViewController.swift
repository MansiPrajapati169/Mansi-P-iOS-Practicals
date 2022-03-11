
import UIKit

class ThirdViewController: UIViewController {
    
    //MARK: - View Controller Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()

        setAttributes()
    }
    
    //MARK: - IBActions
    @IBAction func dismissThird(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
}

extension ThirdViewController {
    
    /// This function is for setting attributes of navigation title
    fileprivate func setAttributes() {
        self.title = NSLocalizedString("Third", comment: "")
        self.navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.yellow]
    }
}
