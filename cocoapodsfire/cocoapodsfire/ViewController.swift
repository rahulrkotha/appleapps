//
//  ViewController.swift
//  cocoapodsfire
//
//  Created by Rahul R Kotha on 3/22/17.
//  Copyright © 2017 Rahul R Kotha. All rights reserved.
//

import UIKit
import Alamofire


class ViewController: UIViewController {

    
    var sampleJson: [String : Any] = [:]
    
    //constants
    let headerDataKey = "headers"

    override func viewDidLoad() {
        super.viewDidLoad()
        
        Alamofire.request("https://httpbin.org/get").responseJSON { response in
//            print(response.request ?? "")  // original URL request
//            print(response.response) // HTTP URL response
//            print(response.data)     // server data
//            print(response.result)   // result of response serialization
            
            self.sampleJson = response.result.value as! [String : Any]
            
            if let originData = self.sampleJson["origin"] {
                print(originData)
            }
            
            if let urlData = self.sampleJson["url"] {
                print(urlData)
            }
            
            if let headersData = self.sampleJson[self.headerDataKey] {
                print(headersData)
            }
            
            if let hostData = self.sampleJson[self.headerDataKey] {
                var sSampleJson: [String : Any] = [:]
                sSampleJson = hostData as! [String : Any]
                
                if let hData = sSampleJson["Host"] {
                    print(hData)
                }
            }
            
        }
        
    }

}

