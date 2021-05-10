//
//  DescriptionViewController.swift
//  Practice with API
//
//  Created by Григорий Виняр on 10.05.2021.
//

import UIKit

class DescriptionViewController: UIViewController {
    
    let nameLabel: UILabel = {
        let name = UILabel()
        name.text = "Name label"
        name.font = name.font.withSize(40)
        name.textColor = .brown
        name.numberOfLines = 0
        name.translatesAutoresizingMaskIntoConstraints = false
        return name
    }()
    
    let titleLabel: UILabel = {
        let title = UILabel()
        title.text = "Title label"
        title.font = title.font.withSize(20)
        title.textColor = .black
        title.numberOfLines = 0
        title.translatesAutoresizingMaskIntoConstraints = false
        return title
    }()
    
    let photoImage: UIImageView = {
        let photo = UIImageView()
        photo.backgroundColor = .blue
        photo.translatesAutoresizingMaskIntoConstraints = false
        return photo
    }()
    
    let publishedAtLabel: UILabel = {
        let label = UILabel()
        label.text = "publishedAT"
        label.textColor = .cyan
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(nameLabel)
        view.addSubview(titleLabel)
        view.addSubview(photoImage)
        view.addSubview(publishedAtLabel)
        setNameLabelConstraints()
        setTitleLabelConstraints()
        setPhotoImageConstraints()
        setPublishedAtLabel()
        
    }
    
    private func setNameLabelConstraints() {
        nameLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        nameLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 50).isActive = true
    }
    
    private func setTitleLabelConstraints() {
        titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        titleLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 30).isActive = true
    }
    
    private func setPhotoImageConstraints() {
        photoImage.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 50).isActive = true
        photoImage.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        photoImage.bottomAnchor.constraint(equalTo: publishedAtLabel.topAnchor, constant: -20).isActive = true
    }
    
    private func setPublishedAtLabel() {
        publishedAtLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        publishedAtLabel.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -20).isActive = true
    }
    
}