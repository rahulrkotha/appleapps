//
//  ViewController.swift
//  ma11TeamTreeBookJsonPar
//
//  Created by Rahul R Kotha on 5/11/17.
//  Copyright © 2017 Rahul R Kotha. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    @IBOutlet weak var tableView: UITableView!
    
    //var books: [Book]? = []
    
    var titleArray = [String]()
    //var idArray = [String]()
    var iconURLArray = [String]()
    var webURL = [String]()
    var earnedDate = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fetchCourseDetails()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func fetchCourseDetails() {
        
        let urlRequest = NSURL(string:  "https://teamtreehouse.com/jonathanschneider.json")
        let task = URLSession.shared.dataTask(with: (urlRequest as? URL)!, completionHandler: {(data, response, error) -> Void in
            
            if let jsonObj = try? JSONSerialization.jsonObject(with: data!, options: .allowFragments) as? NSDictionary {
                //print(jsonObj!.value(forKey: "badges"))
                
                if let badgeArray = jsonObj!.value(forKey: "badges") as? NSArray {
                    for badge in badgeArray{
                        if let badgeDict = badge as? NSDictionary {
                            if let name = badgeDict.value(forKey: "name") {
                                self.titleArray.append(name as! String)
                            }
                            //if let id = badgeDict.value(forKey: "id") {
                            //  self.idArray.append(id as! String)
                            //}
                            if let icon = badgeDict.value(forKey: "icon_url") {
                                self.iconURLArray.append(icon as! String)
                            }
                            if let web = badgeDict.value(forKey: "url") {
                                self.webURL.append(web as! String)
                            }
                            if let edate = badgeDict.value(forKey: "earned_date") {
                                self.earnedDate.append(edate as! String)
                            }
                        }
                    }
                }
                
                OperationQueue.main.addOperation({
                    self.tableView.reloadData()
                })
            }
        })
        task.resume()
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "bookCell", for: indexPath) as! BookCell
        
        //cell.title.text = self.books?[indexPath.item].title
        //cell.idNumber.text = self.books?[indexPath.item].number
        
        cell.title.text = titleArray[indexPath.row]
        //cell.idNumber.text = idArray[indexPath.row]
        
        let iconURL = NSURL(string: iconURLArray[indexPath.row])
        if iconURL != nil {
            let icon = NSData(contentsOf: (iconURL as? URL)!)
            cell.imgView.image = UIImage(data: icon as! Data)
        }
        
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //return self.books?.count ?? 0
        return titleArray.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "oneSegue", sender: earnedDate[indexPath.row])
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let guest = segue.destination as! secondViewController
        
        guest.date = sender as! String
    }

}

