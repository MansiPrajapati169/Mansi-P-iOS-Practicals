
import UIKit

class SignUpViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func backButton(_ sender: Any) {
        performSegue(withIdentifier: Constants.unwindSegue, sender: self)
    }
}
