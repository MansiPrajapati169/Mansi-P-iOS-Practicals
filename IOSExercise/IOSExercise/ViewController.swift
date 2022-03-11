import UIKit

class ViewController: UIViewController, Storyboarded{
    var coordinator: MainCoordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func chapFour(_ sender: UIButton) {
        if let iosChapFour = UIStoryboard(name: Constants.loginStoryBoard, bundle: nil) .instantiateViewController(withIdentifier: Constants.iosChapFour) as? LoginApiViewController {
            navigationController?.pushViewController(iosChapFour, animated: true)
        }
    }
    
    @IBAction func iOSD(_ sender: UIButton) {
        if let iosDVC = UIStoryboard(name: Constants.navigationStoryBoard, bundle: nil) .instantiateViewController(withIdentifier: Constants.iosDIdentifier) as? SendMessageController {
            navigationController?.pushViewController(iosDVC, animated: true)
        }
    }
    
    @IBAction func iOSA(_ sender: UIButton) {
        if let iosAVC = UIStoryboard(name: Constants.signUpStoryBoard, bundle: nil) .instantiateViewController(withIdentifier: Constants.iosAIdentifier) as? SignUpViewController {
            navigationController?.pushViewController(iosAVC, animated: true)
        }
    }
    
    @IBAction func iOSC(_ sender: UIButton) {
        if let iosCVC = UIStoryboard(name: Constants.signUpLoginStoryBoard, bundle: nil) .instantiateViewController(withIdentifier: Constants.iosCIdentifier) as? UIComponentTasksViewController {
            navigationController?.pushViewController(iosCVC, animated: true)
        }
    }
    
//    @IBAction func chapSix(_ sender: UIButton) {
//        if let iosCVC = UIStoryboard(name: "ArchitectureTasks", bundle: nil) .instantiateViewController(withIdentifier: Constants.architectureIdentifier) as? ArchitectureTasksViewController {
//            navigationController?.pushViewController(iosCVC, animated: true)
//        }
//    }
    
    @IBAction func architecture(_ sender: UIButton) {
        coordinator?.goToTasksVC()
    }
}

