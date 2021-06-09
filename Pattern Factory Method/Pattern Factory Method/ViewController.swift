//
//  ViewController.swift
//  Pattern Factory method
//
//  Created by Григорий Виняр on 11.05.2021.
//

import UIKit

class ViewController: UIViewController {
    
    private let tennisButton: UIButton = {
        let button = UIButton()
        button.setTitle("Tennis", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = .lightGray
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(tennisTapped), for: .touchUpInside)
        return button
    }()
    
    private let footballButton: UIButton = {
        let button = UIButton()
        button.setTitle("Football", for: .normal)
        button.backgroundColor = .lightGray
        button.setTitleColor(.black, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(footballTapped), for: .touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(tennisButton)
        view.addSubview(footballButton)
        setupTennisButton()
        setupFootballButton()
    }

    private func setupTennisButton() {
        tennisButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 50).isActive = true
        tennisButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        tennisButton.widthAnchor.constraint(equalToConstant: 150).isActive = true
    }
    
    private func setupFootballButton() {
        footballButton.topAnchor.constraint(equalTo: tennisButton.bottomAnchor, constant: 100).isActive = true
        footballButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        footballButton.widthAnchor.constraint(equalToConstant: 150).isActive = true
    }
    
    @objc func tennisTapped() {
        Training.shared.chooseTraining(name: .Tennis).start()
        Training.shared.chooseTraining(name: .Tennis).stop()
    }
    
    @objc func footballTapped() {
        Training.shared.chooseTraining(name: .Football).start()
        Training.shared.chooseTraining(name: .Football).stop()
    }
    
}

