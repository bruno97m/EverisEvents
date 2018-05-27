//
//  LabelWImage.swift
//  EverisEvents
//
//  Created by macbook on 21/05/18.
//  Copyright © 2018 macbook. All rights reserved.
//

import UIKit

class News: UITableViewCell {

    @IBOutlet weak var newsTitle: UILabel!
    @IBOutlet weak var newsImage: UIImageView!
    @IBOutlet weak var newsDescription: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setUp(title: String, description: String, imageName: String){
        newsImage.image = UIImage(named:imageName)
        newsTitle.text = title
        newsDescription.text = description
        
    }
    
}
