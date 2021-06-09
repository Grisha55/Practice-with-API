//
//  ViewController.swift
//  CodeTransitions
//
//  Created by Григорий Виняр on 10.05.2021.
//

import UIKit

class ViewController: UIViewController {
    
    private let textField: UITextField = {
        let tf = UITextField()
        tf.placeholder = "Write"
        tf.backgroundColor = .lightGray
        tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
    }()
    
    private let button: UIButton = {
        let button = UIButton()
        button.setTitle("Tap me!", for: .normal)
        button.backgroundColor = .red
        button.addTarget(self, action: #selector(tapped), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(textField)
        view.addSubview(button)
        setupTextField()
        setupButton()
    }
    
    @objc func tapped() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        guard let secondVC = storyboard.instantiateViewController(identifier: "second") as? SecondVC else { return }
        secondVC.label.text = textField.text
        navigationController?.pushViewController(secondVC, animated: true)
        
    }
    
    private func setupButton() {
        button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        button.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        button.widthAnchor.constraint(equalToConstant: 100).isActive = true
        button.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
    
    private func setupTextField() {
        textField.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        textField.topAnchor.constraint(equalTo: view.topAnchor, constant: 50).isActive = true
        textField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 60).isActive = true
        textField.heightAnchor.constraint(equalToConstant: 60).isActive = true
    }
    
}

