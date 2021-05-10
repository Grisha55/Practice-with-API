//
//  GettingDataFromApi.swift
//  Practice with API
//
//  Created by Григорий Виняр on 10.05.2021.
//

import UIKit
import Alamofire

func getDataFromApi(completion: @escaping ([Articles]) -> ()) {
    let url = "https://newsapi.org/v2/everything?q=tesla&from=2021-05-10&sortBy=publishedAt&apiKey=e918521f37f2432c83b622513d3f4e3b"
    AF.request(url).validate().responseDecodable(of: News.self) { response in
        guard let articles = response.value?.articles else { return }
        completion(articles)
    }
}

struct News: Decodable {
    var status: String
    var totalResults: Int
    var articles: [Articles]
}

struct Articles: Decodable {
    var source: Source?
    var author: String?
    var title: String?
    var description: String?
    var url: String?
    var urlToImage: String?
    var publishedAt: String?
    var content: String?
}

struct Source: Decodable {
    var id: String?
    var name: String?
}
