//
//  Movies.swift
//  FilmArchive
//
//  Created by Tayyip Çakmak on 17.08.2021.
//

import Foundation

struct Movies: Decodable {
    let results : [Movie]
}
enum CodingKeys: String, CodingKey {
    case results
}
