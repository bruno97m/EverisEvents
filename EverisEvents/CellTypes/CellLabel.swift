//
//  CellLabel.swift
//  EverisEvents
//
//  Created by macbook on 08/05/18.
//  Copyright © 2018 macbook. All rights reserved.
//

import Foundation
import UIKit

class CellLabel: CellBase {
    
    let cellId = "MyLabel"
    var labelValue: String!
    
    
    init(labelValue: String) {
        super.init(ID: cellId)
        self.labelValue = labelValue
    }
    
  
    
    override func buildCell(indexPath: IndexPath, tableview: UITableView) -> UITableViewCell{
        
        let cell = super.buildCell(indexPath: indexPath, tableview: tableview) as! MyLabel
        cell.setUp(myString: labelValue)
        return cell
    }
}
