//
//  AboutViewController.swift
//  BullsEye
//
//  Created by c.toan on 25.07.2022.
//

import WebKit

class AboutViewController: UIViewController {

    @IBOutlet weak var webView: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()

        if let url = Bundle.main.url(
            forResource: "BullsEye",
            withExtension: "html"){
            
            let request = URLRequest(url: url)
            webView.load(request)
        }
            
    }
    
    @IBAction func close(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    

}
