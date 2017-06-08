//
//  secondViewController.swift
//  ma11TeamTreeBookJsonPar
//
//  Created by Rahul R Kotha on 5/12/17.
//  Copyright © 2017 Rahul R Kotha. All rights reserved.
//

import UIKit

class secondViewController: UIViewController {

    var date = "Date"
    
    @IBOutlet weak var imgView: UIImageView!
    
    @IBOutlet weak var earnedDate: UILabel!
    
    @IBAction func openWebsite(_ sender: UIButton) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        earnedDate.text = date

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
