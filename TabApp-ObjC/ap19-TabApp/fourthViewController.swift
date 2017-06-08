//
//  fourthViewController.swift
//  ap19-TabApp
//
//  Created by Rahul R Kotha on 4/20/17.
//  Copyright © 2017 Rahul R Kotha. All rights reserved.
//

import UIKit

class fourthViewController: UIViewController {

    @IBOutlet weak var segContoller: UISegmentedControl!
    @IBOutlet weak var optionLabel: UILabel!
    @IBAction func selectOne(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            optionLabel.text = "First"
        case 1:
            optionLabel.text = "Second"
        case 2:
            optionLabel.text = "Third"
        case 3:
            optionLabel.text = "Fourth"
        default:
            break;
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
