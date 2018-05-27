//
//  CellImage.swift
//  EverisEvents
//
//  Created by macbook on 08/05/18.
//  Copyright © 2018 macbook. All rights reserved.
//

import Foundation
import UIKit

class CellImage: CellBase {
    
    let cellId = "MyImage"
    var imageValue: String!
    
    
    init(imageValue: String) {
        super.init(ID: cellId)
        self.imageValue = imageValue
    }
    
    
    
    override func buildCell(indexPath: IndexPath, tableview: UITableView) -> UITableViewCell{
        
        let cell = super.buildCell(indexPath: indexPath, tableview: tableview) as! MyImage
        cell.setUp(imageName: imageValue)
        return cell
    }
}
