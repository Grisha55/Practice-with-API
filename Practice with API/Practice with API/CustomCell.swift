//
//  CustomCell.swift
//  Practice with API
//
//  Created by Григорий Виняр on 10.05.2021.
//

import UIKit

class CustomCell: UITableViewCell {

    private let nameLabel: UILabel = {
        let name = UILabel()
        name.textColor = .black
        name.textAlignment = .center
        name.numberOfLines = 3
        name.font = name.font.withSize(22)
        name.translatesAutoresizingMaskIntoConstraints = false
        return name
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(nameLabel)
        setNameLabelConstraints()
    }
    
    func setNameLabelConstraints() {
        nameLabel.centerXAnchor.constraint(equalTo: contentView.centerXAnchor).isActive = true
        nameLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10).isActive = true
        nameLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func prepareForReuse() {
        self.nameLabel.text = nil
    }
    
    func configure(name: String) {
        self.nameLabel.text = name
    }
}
