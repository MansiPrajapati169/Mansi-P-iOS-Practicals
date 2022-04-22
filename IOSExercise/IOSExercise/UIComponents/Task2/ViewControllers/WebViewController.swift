//
//  WebViewController.swift
//  IOSExercise
//
//  Created by Mansi Prajapati on 08/03/22.
//

import UIKit
import WebKit
class WebViewController: UIViewController {

    //MARK: - Outlets
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    @IBOutlet weak var webView: WKWebView!
    
    //MARK: - View Controller LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        webView.navigationDelegate = self
        
        loadWebPage()
    }
}
   
//MARK: - Extra Function
extension WebViewController {
    
    fileprivate func loadWebPage() {
        
        guard let url = URL(string: Constants.googleUrl) else {
            return
        }
        
        let urlRequest = URLRequest(url: url)
        self.webView.load(urlRequest)
      
    }
}

//MARK: - WKNavigationDelegate
extension WebViewController : WKNavigationDelegate {
    
    func webView(_ webView: WKWebView, didCommit navigation: WKNavigation!) {
        activityIndicator.startAnimating()
    }
 
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        activityIndicator.hidesWhenStopped = true
        webView.alpha = Constants.one
        activityIndicator.stopAnimating()
    }
}
