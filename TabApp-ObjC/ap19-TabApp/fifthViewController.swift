//
//  fifthViewController.swift
//  ap19-TabApp
//
//  Created by Rahul R Kotha on 4/20/17.
//  Copyright © 2017 Rahul R Kotha. All rights reserved.
//

import UIKit

class fifthViewController: UIViewController {

    @IBOutlet weak var myWebView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var url = URL(string: "https://www.apple.com/")
        myWebView.loadRequest(URLRequest(url: url!))
    }
}

