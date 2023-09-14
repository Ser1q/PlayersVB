//
//  Players.swift
//  VolleyBallAPI
//
//  Created by Nuradil Serik on 14.09.2023.
//

import Foundation
import SwiftyJSON

struct Players{
    var name = ""
    var surname = ""
    var position = ""
    var height = ""
    var image = ""
    
    init(){
        
    }
    init(json: JSON){
        if let item = json["name"].string{
            name = item
        }
        if let item = json["surname"].string{
            surname = item
        }
        if let item = json["position"].string{
            position = item
        }
        if let item = json["height"].string{
            height = item
        }
        if let item = json["image"].string{
            image = item
        }
    }
}
