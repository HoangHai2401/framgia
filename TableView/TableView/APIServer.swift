//
//  APIServer.swift
//  TableView
//
//  Created by mai.thi.giang on 3/30/18.
//  Copyright © 2018 mai.thi.giang. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

class APIServer{
    static let shareInstance = APIServer()
    private init() {}
    
    func getListMovie(page: Int, susscess:@escaping (_ movie: JSON) -> Void, failure: @escaping (_ error: Error) -> Void) {
        let path: String = "https://api.themoviedb.org/3/genre/28/movies?api_key=5a5ec186a70be41d577196ee58e4ff3d&language=en-US&page=" + "\(page)"
        
        Alamofire.request(path, method: .get, parameters: nil, encoding: JSONEncoding.default, headers: nil).responseJSON {
            response in
            switch response.result {
            case .success(let value):
                let json = JSON(value)
                susscess(json)
                break
            case .failure(let error):
                failure(error)
                break
            }
        }
    }
}
