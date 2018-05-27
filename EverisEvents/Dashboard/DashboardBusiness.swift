//
//  Dashboard.swift
//  EverisEvents
//
//  Created by macbook on 16/05/18.
//  Copyright © 2018 macbook. All rights reserved.
//

import Foundation
import Alamofire

struct evento {
    let Titulo : String
    let Descricao : String
}
class DashBoardBusiness {
    func getDashArray(completion: @escaping (_ dashArray:[[CellBaseProtocol]]) -> ()){
         var dashArray = [[CellBaseProtocol](),[CellBaseProtocol]()]
        var eventos = [evento]()
        let apiCall = "http://localhost:1337/evento"
       
        
        let parameters: [String: AnyObject] = [
            "Titulo": "Conferencia de tecnologia" as AnyObject,
            "Descricao": "everis a everis a everis a everis" as AnyObject
            ]
        
        
        
        // This code will call the iTunes Search API
        // to search for music containing "Jack Johnson"
        Alamofire.request(apiCall, parameters: parameters).responseJSON() { response in
            switch response.result {
            case .success:
                if let json = response.result.value {
                    
                    
                    // Do what you need to with JSON here!
                    // The rest is all boiler plate code you'll use for API requests
                    print(json)
                    
                    
                }
            case .failure(let error):
                print(error)
            }
        }
       
        
        dashArray[0].append(CellEvent(cellImage: "nil", cellTitle: "Evento Everis", cellDescription: "Lorem ipsum dolor sit er elit  tfyvgubhijnncfvgubh gfh kjmyuyu g hgh Lorem ipsum dolor sit er elit  tfyvgubhijnncfvgubh gfh kjmyuyu g hgh Lorem ipsum dolor sit er elit  tfyvgubhijnncfvgubh gfh kjmyuyu g hgh", cellDay: "19", cellMonth: "Maio"))
        dashArray[1].append(CellNews(cellImage: "ball", cellTitle: "Everis", cellDescription: "Lorem ipsum dolor sit er elit  tfyvgubhijnncfvgubh gfh kjmyuyu g hgh Lorem ipsum dolor sit er elit  tfyvgubhijnncfvgubh gfh kjmyuyu g hgh Lorem ipsum dolor sit er elit  tfyvgubhijnncfvgubh gfh kjmyuyu g hgh"))
        dashArray[0].append(CellEvent(cellImage: "nil", cellTitle: "Everis", cellDescription: "Lorem ipsum dolor sit er elit  tfyvgubhijnncfvgubh gfh kjmyuyu g hgh Lorem ipsum dolor sit er elit  tfyvgubhijnncfvgubh gfh kjmyuyu g hgh Lorem ipsum dolor sit er elit  tfyvgubhijnncfvgubh gfh kjmyuyu g hgh", cellDay: "19", cellMonth: "Maio"))
        dashArray[1].append(CellNews(cellImage: "calendar", cellTitle: "Everis", cellDescription: "fLorem ipsum dolor sit er elit  tfyvgubhijnncfvgubh gfh kjmyuyu g hgh Lorem ipsum dolor sit er elit  tfyvgubhijnncfvgubh gfh kjmyuyu g hgh Lorem ipsum dolor sit er elit  tfyvgubhijnncfvgubh gfh kjmyuyu g hgh"))
            
        completion(dashArray)
        
    }
    
}
