//
//  WebViewController.swift
//  BMI-RMG
//
//  Created by 유명규 on 11/21/24.
//
import UIKit
import WebKit

class WebViewController: UIViewController {
    @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadWebPage("https://ymq22.tistory.com/")
    }
    
    @IBAction func goGoogle(_ sender: UIButton) {
        loadWebPage("https://www.google.com")
    }
    
    private func loadWebPage(_ urlString: String) {
        guard let url = URL(string: urlString) else {
            print("Invalid URL: \(urlString)")
            return
        }
        
        webView.load(URLRequest(url: url))
    }
}
