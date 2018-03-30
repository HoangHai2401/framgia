//
//  Movie.swift
//  TableView
//
//  Created by mai.thi.giang on 3/30/18.
//  Copyright © 2018 mai.thi.giang. All rights reserved.
//

import UIKit
import SwiftyJSON

class Movie: NSObject {
    var original_title: String = ""
    var overview: String = ""
    var poster_path: String = ""
    
    init (_data: JSON) {
        self.original_title = _data["original_title"].string!
        self.overview = _data["overview"].string!
        self.poster_path = _data["poster_path"].string!
    }
}
