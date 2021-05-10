//
//  ViewController.swift
//  Practice with API
//
//  Created by Григорий Виняр on 10.05.2021.
//

import UIKit
import Kingfisher

class ViewController: UIViewController {

    private let tableView = UITableView()
    
    private var news = [Articles]()
    private var filterNews = [Articles]()
    
    private let searchBar = UISearchBar()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureTableView()
        getDataFromApi { [weak self] articles in
            self?.news = articles
            self?.filterNews = articles
            self?.tableView.reloadData()
        }
        setupSearchBar()
    }

    func setupSearchBar() {
        navigationItem.titleView = searchBar
        searchBar.delegate = self
        searchBar.placeholder = "Search"
        //searchBar.autocapitalizationType = .none
        
    }
    
    func configureTableView() {
        view.addSubview(tableView)
        tableView.register(CustomCell.self, forCellReuseIdentifier: "custom")
        tableView.delegate = self
        tableView.dataSource = self
        tableView.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height)
        tableView.rowHeight = 100
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let descriptionVC = segue.destination as? DescriptionViewController else { return }
        guard let articles = sender as? Articles else { return }
        descriptionVC.nameLabel.text = articles.author
        descriptionVC.titleLabel.text = articles.title
        descriptionVC.publishedAtLabel.text = articles.publishedAt
        descriptionVC.photoImage.kf.setImage(with: URL(string: articles.urlToImage ?? ""))
        
    }

}

extension ViewController: UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        filterNews = []
        if searchText == "" {
            filterNews = news
        } else {
            filterNews = news.filter({ articles in
                (articles.author?.lowercased() ?? "").contains(searchText.lowercased())
            })
        }
        self.tableView.reloadData()
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let articles = filterNews[indexPath.row]
        performSegue(withIdentifier: "custom", sender: articles)
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filterNews.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "custom", for: indexPath) as? CustomCell else { return UITableViewCell() }
        cell.configure(name: filterNews[indexPath.row].author ?? "Unknown")
        return cell
    }
}
