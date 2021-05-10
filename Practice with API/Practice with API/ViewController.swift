//
//  ViewController.swift
//  Practice with API
//
//  Created by Григорий Виняр on 10.05.2021.
//

import UIKit

class ViewController: UIViewController {

    private let tableView = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureTableView()
    }

    func configureTableView() {
        view.addSubview(tableView)
        tableView.register(CustomCell.self, forCellReuseIdentifier: "custom")
        tableView.delegate = self
        tableView.dataSource = self
        tableView.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height)
        tableView.rowHeight = 100
    }

}

extension ViewController: UITableViewDelegate {
    
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "custom", for: indexPath) as? CustomCell else { return UITableViewCell() }
        
        return cell
    }
}
