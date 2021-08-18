//
//  ViewController.swift
//  FilmArchive
//
//  Created by Tayyip Çakmak on 16.08.2021.
//
import Alamofire
import SwiftyJSON
import RealmSwift
import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
  
    var articles = [Service]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let service = Service(baseUrl: "https://api.themoviedb.org/3/discover/movie?api_key=b155b3b83ec4d1cbb1e9576c41d00503&language=en-US&sort_by=popularity.desc&include_adult=false&include_video=false&page=1")
        service.getFullFilmArchive()
        
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return articles.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let article = articles[indexPath.row]
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ArticleCell", for: indexPath) as? ArticleCollectionViewCell {
        }
    }
}

