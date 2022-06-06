//
//  SearchViewController.swift
//  FunZone
//
//  Created by admin on 5/26/22.
//

import UIKit
import WebKit

class SearchViewController: UIViewController {

    @IBOutlet weak var webView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let webKitView = WKWebView()
        let google = URL(string:"https://www.google.com")!
        webKitView.load(URLRequest(url: google))
        view = webKitView
        //webView = webKitView
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
