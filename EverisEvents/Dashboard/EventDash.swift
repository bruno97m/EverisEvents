//
//  EventDash.swift
//  EverisEvents
//
//  Created by macbook on 22/05/18.
//  Copyright © 2018 macbook. All rights reserved.
//

import UIKit

class EventDash: UITableViewCell {

    @IBOutlet weak var eventMonth: UILabel!
    @IBOutlet weak var eventDay: UILabel!
    @IBOutlet weak var eventImage: UIImageView!
    @IBOutlet weak var eventTitle: UILabel!
    @IBOutlet weak var eventDescription: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    func setUp(title: String, description: String, imageName: String, day: String, month:String){
        eventImage.image = UIImage(named:imageName)
        eventTitle.text = title
        eventDescription.text = description
        eventDay.text = day
        eventMonth.text = month
        eventImage.layer.cornerRadius = self.eventImage.frame.size.width / 2;
        eventImage.clipsToBounds = true
    }
    
    
    
}
