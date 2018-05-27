//
//  MyTableViewCell.swift
//  EverisEvents
//
//  Created by macbook on 02/05/18.
//  Copyright © 2018 macbook. All rights reserved.
//

import UIKit

class MyLabel: UITableViewCell {

    @IBOutlet weak var mylabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setUp(myString : String){
        mylabel.text = myString
    }
    
}
