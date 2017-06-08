//
//  secondViewController.swift
//  ap19-TabApp
//
//  Created by Rahul R Kotha on 4/20/17.
//  Copyright © 2017 Rahul R Kotha. All rights reserved.
//

import UIKit

class secondViewController: UIViewController {

    @IBOutlet weak var slideValue: UILabel!
    @IBOutlet weak var slider: UISlider!
    @IBAction func slideIt(_ sender: UISlider) {
        slideValue.text = String(format: "Value = %0.2f", slider.value)
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
