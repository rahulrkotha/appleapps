//
//  BookCell.swift
//  ma11TeamTreeBookJsonPar
//
//  Created by Rahul R Kotha on 5/11/17.
//  Copyright © 2017 Rahul R Kotha. All rights reserved.
//

import UIKit

class BookCell: UITableViewCell {

    @IBOutlet weak var idNumber: UILabel!
    
    @IBOutlet weak var title: UILabel!
    
    @IBOutlet weak var author: UILabel!
    
    @IBOutlet weak var authorName: UILabel!
    
    @IBOutlet weak var imgView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
