//
//  ViewController.swift
//  SnapSearch
//
//  Created by Liam Brown on 13/06/2018.
//  Copyright © 2018 Liam Brown. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    // Outlets
    @IBOutlet weak var webView: WKWebView!
    @IBOutlet weak var searchField: UITextField!
    
    
    //Variables
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

    //Create virables for the URL
    var BASE_URL = "https://snaprevealer.com/?s="
    var SEARCH_URL = ""
    
    
// then create an action to save the url
    
    @IBAction func searchButtonPressed(_ sender: Any) {
         let editedSearch = searchField.text!
        SEARCH_URL = editedSearch.replacingOccurrences(of: " ", with: "%20")
        if let url = URL(string: BASE_URL+SEARCH_URL) {
           
            webView.load(URLRequest (url: url))
           
        }
       searchField.text = ""
    }
    
}

