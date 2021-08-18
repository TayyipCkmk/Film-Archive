//
//  Model.swift
//  FilmArchive
//
//  Created by Tayyip Çakmak on 17.08.2021.
//

import Foundation
import Alamofire

class Service  {
    fileprivate var baseUrl = ""
    
    init(baseUrl: String) {
        self.baseUrl = baseUrl
    }
    
    func getFullFilmArchive() {
        AF.request(self.baseUrl, method: .get, parameters: nil, encoding: URLEncoding.default, headers: nil, interceptor: nil).response { (responseData) in
            guard let data = responseData.data else {return}
            do {
                
                let movies = try JSONDecoder().decode(Movies.self, from: data)
                print(movies.results)
                
            }
            catch {
                print("Error == \(error)")
            }
            
        }
    }
}
