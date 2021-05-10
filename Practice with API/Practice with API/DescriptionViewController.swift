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
        name.font = name.font.withSize(30)
        name.textAlignment = .center
        name.textColor = .brown
        name.numberOfLines = 0
        name.translatesAutoresizingMaskIntoConstraints = false
        return name
    }()
    
    let titleLabel: UILabel = {
        let title = UILabel()
        title.font = title.font.withSize(20)
        title.textAlignment = .center
        title.textColor = .black
        title.numberOfLines = 0
        title.translatesAutoresizingMaskIntoConstraints = false
        return title
    }()
    
    let photoImage: UIImageView = {
        let photo = UIImageView()
        photo.layer.cornerRadius = 20
        photo.layer.masksToBounds = true
        photo.translatesAutoresizingMaskIntoConstraints = false
        return photo
    }()
    
    let publishedAtLabel: UILabel = {
        let label = UILabel()
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
        nameLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 80).isActive = true
        nameLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
    }
    
    private func setTitleLabelConstraints() {
        titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        titleLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 20).isActive = true
        titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
    }
    
    private func setPhotoImageConstraints() {
        photoImage.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 50).isActive = true
        photoImage.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        photoImage.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        photoImage.bottomAnchor.constraint(equalTo: publishedAtLabel.topAnchor, constant: -20).isActive = true
    }
    
    private func setPublishedAtLabel() {
        publishedAtLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        publishedAtLabel.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -20).isActive = true
    }
    
}
