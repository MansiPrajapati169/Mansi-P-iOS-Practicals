//
//  SignupLoginViewController.swift
//  IOSExercise
//
//  Created by Mansi Prajapati on 01/03/22.
//

import UIKit

class SignupLoginViewController: UIPageViewController {
    
    //MARK: - Variable
    lazy var vcList:[UIViewController] = {
        let storyboard = UIStoryboard(name: Constants.signUpLoginStoryBoard, bundle: nil)
        let signupViewController = storyboard.instantiateViewController(identifier: Constants.signUpIdentifier)
        let loginViewController = storyboard.instantiateViewController(identifier: Constants.loginIdentifier)
        
        return [signupViewController, loginViewController]
    }()
    
    //MARK: - View Controller LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.dataSource = self
        
        setVC()
    }
}

//MARK: - UIPageViewControllerDataSource
extension SignupLoginViewController : UIPageViewControllerDataSource {
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        
        guard let index = vcList.lastIndex(of: viewController) else { return nil }
        let previousIndex = index - Constants.intOne
        guard previousIndex >= .zero else {return nil}
        guard previousIndex < vcList.count else {return nil}
        return vcList[previousIndex]
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        
        guard let index = vcList.lastIndex(of: viewController) else { return nil }
        let previousIndex = index + Constants.intOne
        guard previousIndex >= .zero else {return nil}
        guard previousIndex < vcList.count else {return nil}
        return vcList[previousIndex]
    }
    
}

//MARK: - Extra Functions
extension SignupLoginViewController {
    
    fileprivate func setVC() {
        if let vc = vcList.first {
            self.setViewControllers([vc], direction: .forward, animated: true, completion: nil)
        }
    }
}
