//
//  MyTableViewCell2.swift
//  EverisEvents
//
//  Created by macbook on 05/05/18.
//  Copyright © 2018 macbook. All rights reserved.
//

import UIKit

class MyImage: UITableViewCell {
    
    @IBOutlet weak var MyImageView: UIImageView!
    
    
   
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
    func setUp(imageName: String){
        MyImageView.image = UIImage(named:imageName)
    }
    
}

