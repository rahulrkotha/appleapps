//
//  thirdViewController.swift
//  ap19-TabApp
//
//  Created by Rahul R Kotha on 4/20/17.
//  Copyright © 2017 Rahul R Kotha. All rights reserved.
//

import UIKit

class thirdViewController: UIViewController {

    @IBOutlet weak var mySwitch: UISwitch!
    @IBAction func toppleIt(_ sender: UISwitch) {
        if (mySwitch.isOn){
            self.view.backgroundColor = UIColor.green
        } else {
            self.view.backgroundColor = UIColor.red
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
