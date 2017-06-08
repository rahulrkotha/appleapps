//
//  ViewController.swift
//  ap19-TabApp
//
//  Created by Rahul R Kotha on 4/19/17.
//  Copyright © 2017 Rahul R Kotha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var nameLabel: UILabel!
    @IBAction func goButton(_ sender: UIButton) {
        //nameLabel.text = nameField.text
        nameLabel.text = String(format: "Welcome, %@", nameField.text!)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

