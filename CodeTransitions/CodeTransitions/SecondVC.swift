//
//  SecondVC.swift
//  CodeTransitions
//
//  Created by Григорий Виняр on 10.05.2021.
//

import UIKit

class SecondVC: UIViewController {

    let label: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(label)
        setupLabel()
    }

    private func setupLabel() {
        label.topAnchor.constraint(equalTo: view.topAnchor, constant: 60).isActive = true
        label.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    
}
