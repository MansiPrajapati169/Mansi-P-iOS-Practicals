import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func basicLayout(_ sender: UIButton) {
        performSegue(withIdentifier: Constants.basicAutoLayout, sender: self)
    }
    
    @IBAction func unwind(seg: UIStoryboardSegue) {}
}

